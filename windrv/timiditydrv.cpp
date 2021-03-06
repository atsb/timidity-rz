/*
    TiMidity++ -- MIDI to WAVE converter and player
    Copyright (C) 1999-2002 Masanao Izumo <mo@goice.co.jp>
    Copyright (C) 1995 Tuukka Toivonen <tt@cgs.fi>

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

//#define DEBUG
#define STRICT
#ifndef _WIN32_WINNT
#define _WIN32_WINNT 0x0400
#endif

#include <process.h>
#if __DMC__
extern "C" 
unsigned long _beginthreadex( void *security, unsigned stack_size,
		unsigned ( __stdcall *start_address )( void * ), void *arglist,
		unsigned initflag, unsigned *thrdaddr );
extern "C" 
void _endthreadex( unsigned retval );
#endif

#ifdef DEBUG
#include <stdio.h>
#endif

#if __DMC__
#include <objbase.h>
#endif
#include <initguid.h>
#include "timiditydrv.h"

#include "mmddk.h"  
/* Use XP SDK's mmsystem.h. mingw's lacks some definitions */
#include "mmsystem.h" //From SDK (Digital mars can't use SDK's mmsystem.h)

#if defined(__MINGW32__) || defined(__WATCOMC__)
#define __IID_DEFINED__ 1
#endif
#include "timiditydrv_i.c"
#include "mmreg.h"	//Fom SDK

extern "C" {
#include "config.h"
#include "sysdep.h"
}

#include "timiwp_timidity.h"


LONG driverCount;

static volatile int OpenCount = 0;
static volatile int modm_closed = 1;

static CRITICAL_SECTION mim_section;
static volatile int stop_thread = 0;
static volatile int stop_rtthread = 0;
static HANDLE hCalcThread = NULL;
static HANDLE hRtsynThread = NULL;

extern "C" 
BOOL WINAPI DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved ){
	if (fdwReason == DLL_PROCESS_ATTACH){
		DisableThreadLibraryCalls(hinstDLL);
	}else if(fdwReason == DLL_PROCESS_DETACH){
		;
	}
	return TRUE;    
}

STDAPI DllCanUnloadNow(void){
	return S_OK;
}

STDAPI DllGetClassObject(REFCLSID rclsid, REFIID riid, LPVOID * ppv){
	return S_OK;
}

STDAPI DllRegisterServer(void){
	return S_OK;
}

STDAPI DllUnregisterServer(void)
{
	return S_OK;
}


//unsigned __stdcall threadfunc2(LPVOID lpV);
STDAPI_(LONG) DefDriverProc(DWORD dwDriverId, HDRVR hdrvr, UINT msg, LONG lParam1, LONG lParam2);

STDAPI_(LONG) DriverProc(DWORD dwDriverId, HDRVR hdrvr, UINT msg, LONG lParam1, LONG lParam2){
 
	switch(msg) {
	case DRV_REMOVE:
		DeleteCriticalSection(&mim_section);
		return 1;
	case DRV_LOAD:
		InitializeCriticalSection(&mim_section);
		return 1;
	case DRV_CLOSE:
	case DRV_CONFIGURE:
	case DRV_DISABLE:
	case DRV_ENABLE:
	case DRV_EXITSESSION:
	case DRV_FREE:
	case DRV_INSTALL:
	case DRV_OPEN:
	case DRV_POWER:
	case DRV_QUERYCONFIGURE:
	default:
		return 1;
		break;
		return DefDriverProc(dwDriverId, hdrvr, msg, lParam1, lParam2);
		break;
	}
	return DefDriverProc(dwDriverId, hdrvr, msg, lParam1, lParam2);
}

HRESULT modGetCaps(PVOID capsPtr, DWORD capsSize) {
	MIDIOUTCAPSA * myCapsA;
	MIDIOUTCAPSW * myCapsW;
#ifndef __DMC__
	MIDIOUTCAPS2A * myCaps2A;
	MIDIOUTCAPS2W * myCaps2W;
#endif

	CHAR synthName[] = "Timidity++ Driver\0";
	WCHAR synthNameW[] = L"Timidity++ Driver\0";


	
	switch (capsSize) {
	case (sizeof(MIDIOUTCAPSA)):
		myCapsA = (MIDIOUTCAPSA *)capsPtr;
		myCapsA->wMid = MM_UNMAPPED;
		myCapsA->wPid = MM_MPU401_MIDIOUT;
		memcpy(myCapsA->szPname, synthName, sizeof(synthName));
		myCapsA->wTechnology = MOD_MIDIPORT;
		myCapsA->vDriverVersion = 0x0090;
		myCapsA->wVoices = 0;
		myCapsA->wNotes = 0;
		myCapsA->wChannelMask = 0xffff;
		myCapsA->dwSupport = 0;
		return MMSYSERR_NOERROR;

		break;
	case (sizeof(MIDIOUTCAPSW)):
		myCapsW = (MIDIOUTCAPSW *)capsPtr;
		myCapsW->wMid = MM_UNMAPPED;
		myCapsW->wPid = MM_MPU401_MIDIOUT;
		memcpy(myCapsW->szPname, synthNameW, sizeof(synthNameW));
		myCapsW->wTechnology = MOD_MIDIPORT;
		myCapsW->vDriverVersion = 0x0090;
		myCapsW->wVoices = 0;
		myCapsW->wNotes = 0;
		myCapsW->wChannelMask = 0xffff;
		myCapsW->dwSupport = 0;
		return MMSYSERR_NOERROR;

		break;
#ifndef __DMC__
	case (sizeof(MIDIOUTCAPS2A)):
		myCaps2A = (MIDIOUTCAPS2A *)capsPtr;
		myCaps2A->wMid = MM_UNMAPPED;
		myCaps2A->wPid = MM_MPU401_MIDIOUT;
		memcpy(myCaps2A->szPname, synthName, sizeof(synthName));
		myCaps2A->wTechnology = MOD_MIDIPORT;
		myCaps2A->vDriverVersion = 0x0090;
		myCaps2A->wVoices = 0;
		myCaps2A->wNotes = 0;
		myCaps2A->wChannelMask = 0xffff;
		myCaps2A->dwSupport = 0;
		myCaps2A->ManufacturerGuid = CLSID_tim_synth;
		myCaps2A->ProductGuid = CLSID_tim_synth;
		myCaps2A->NameGuid = CLSID_tim_synth;
		return MMSYSERR_NOERROR;

	case (sizeof(MIDIOUTCAPS2W)):
		myCaps2W = (MIDIOUTCAPS2W *)capsPtr;
		myCaps2W->wMid = MM_UNMAPPED;
		myCaps2W->wPid = MM_MPU401_MIDIOUT;
		memcpy(myCaps2W->szPname, synthNameW, sizeof(synthNameW));
		myCaps2W->wTechnology = MOD_MIDIPORT;
		myCaps2W->vDriverVersion = 0x0090;
		myCaps2W->wVoices = 0;
		myCaps2W->wNotes = 0;
		myCaps2W->wChannelMask = 0xffff;
		myCaps2W->dwSupport = 0;
		myCaps2W->ManufacturerGuid = CLSID_tim_synth;
		myCaps2W->ProductGuid = CLSID_tim_synth;
		myCaps2W->NameGuid = CLSID_tim_synth;
		return MMSYSERR_NOERROR;
#endif

	default:
		return MMSYSERR_ERROR;

		break;
	}

}


struct evbuf_t{
	UINT uMsg;
	double event_time;
	DWORD	dwParam1;
	DWORD	dwParam2;
	int exlen;
	char *sysexbuffer;
};
#define EVBUFF_SIZE 512
static struct evbuf_t evbuf[EVBUFF_SIZE];
static UINT  evbwpoint=0;
static UINT  evbrpoint=0;
static UINT evbsysexpoint;

int timsyn_buf_check(void){
	int retval;
	EnterCriticalSection(&mim_section);
	retval = (evbrpoint != evbwpoint) ? ~0 :  0;
	LeaveCriticalSection(&mim_section);
	return retval;
}

int timsyn_play_some_data(void){
	UINT uMsg;
	DWORD	dwParam1;
	DWORD	dwParam2;
	
	UINT evbpoint;
	MIDIHDR *IIMidiHdr;
	int exlen;
	char *sysexbuffer;
	int played;
	double event_time;
		
	played=0;
		if( !timsyn_buf_check() ){ 
			played=~0;
			return played;
		}
		do{
			EnterCriticalSection(&mim_section);
			evbpoint=evbrpoint;
			if (++evbrpoint >= EVBUFF_SIZE)
					evbrpoint -= EVBUFF_SIZE;

			uMsg=evbuf[evbpoint].uMsg;
			dwParam1=evbuf[evbpoint].dwParam1;
			dwParam2=evbuf[evbpoint].dwParam2;
			event_time=evbuf[evbpoint].event_time;
			
			LeaveCriticalSection(&mim_section);
		    exlen=evbuf[evbpoint].exlen;
			sysexbuffer=evbuf[evbpoint].sysexbuffer;
			switch (uMsg) {
			case MODM_DATA:
				rtsyn_play_one_data (0, dwParam1, event_time);
				break;
			case MODM_LONGDATA:
#ifdef DEBUG
	FILE * logfile;
	logfile = fopen("c:\\dbglog2.log","at");
	if(logfile!=NULL) {
		for(int i = 0 ; i < exlen ; i++)
			fprintf(logfile,"%x ", sysexbuffer[i]);
		fprintf(logfile,"\n");
	}
	fclose(logfile);
#endif
				rtsyn_play_one_sysex (sysexbuffer,exlen, event_time);
				free(sysexbuffer);
				break;
			}
		}while(timsyn_buf_check());	
	return played;
}

unsigned __stdcall threadfunc(LPVOID lpV){
	while(stop_thread == 0){
		Sleep(1);
		//EnterCriticalSection(&mim_section);
		timsyn_play_some_data();
		rtsyn_play_calculate();
		//LeaveCriticalSection(&mim_section);
	}
	stop_thread=0;
	_endthreadex(0);
	return 0;
}

unsigned __stdcall threadfunc2(LPVOID lpV){
	int argc,i;
	char *argv[2];
	HANDLE hThread = NULL;
	unsigned int thrdaddr;
	int opend=0;
	;
	while(opend == 0) {
		Sleep(100);
		argc = 2;
		argv[0] = strdup("timidity");
		argv[1] = strdup("-iW");
		if ( 0 == timiwp_main_ini(argc, argv)){
			rtsyn_init();
			hThread=(HANDLE)_beginthreadex(NULL,0,threadfunc,0,0,&thrdaddr);
			SetPriorityClass(hThread, REALTIME_PRIORITY_CLASS);
			SetThreadPriority(hThread, THREAD_PRIORITY_TIME_CRITICAL);
			opend = 1;
		}
		for(i = 0 ; i < 2 ; i++) free(argv[i]);
	}
	hCalcThread = hThread;
	
	while(stop_rtthread == 0){
		Sleep(10);
	}

	rtsyn_stop_playing();
	rtsyn_close();
	timiwp_main_close();
	stop_rtthread=0;
	_endthreadex(0);
	return 0;
}

STDAPI_(LONG) modMessage(UINT uDeviceID, UINT uMsg, DWORD dwUser, DWORD dwParam1, DWORD dwParam2){
	unsigned int thrdaddr;
	DWORD tstate;
	int OCount;
	DWORD Exit;
	
	MIDIHDR *IIMidiHdr;	
	UINT evbpoint;
	static DWORD processPriority;
	
	int exlen = 0;
	char *sysexbuffer = NULL ;

	
	switch (uMsg) {
	case MODM_OPEN:
		OpenCount++;
		if ( OpenCount == 1 && modm_closed  == 1 ){
			processPriority = GetPriorityClass(GetCurrentProcess());
			SetPriorityClass(GetCurrentProcess(), REALTIME_PRIORITY_CLASS);
			hRtsynThread=(HANDLE)_beginthreadex(NULL,0,threadfunc2,0,0,&thrdaddr);
			modm_closed = 0;
		}
		
	
		SetPriorityClass(GetCurrentProcess(), processPriority);
		return MMSYSERR_NOERROR;
		break;
	case MODM_PREPARE:
		return MMSYSERR_NOTSUPPORTED;
		break;
	case MODM_UNPREPARE:
		return MMSYSERR_NOTSUPPORTED;
		break;
	case MODM_GETDEVCAPS:
		return modGetCaps((PVOID)dwParam1, dwParam2);
		break;
	case MODM_LONGDATA:
		IIMidiHdr = (MIDIHDR *)dwParam1;
		if( !(IIMidiHdr->dwFlags & MHDR_PREPARED) ) return MIDIERR_UNPREPARED;
		IIMidiHdr->dwFlags &= ~MHDR_DONE;
		IIMidiHdr->dwFlags |= MHDR_INQUEUE;
		IIMidiHdr = (MIDIHDR *) dwParam1;
		exlen=(int)IIMidiHdr->dwBufferLength;
		if( NULL == (sysexbuffer = (char *)malloc(exlen * sizeof(char)))){
			exlen = 0;
		}else{
			memcpy(sysexbuffer,IIMidiHdr->lpData,exlen);
#ifdef DEBUG
	FILE * logfile;
	logfile = fopen("c:\\dbglog.log","at");
	if(logfile!=NULL) {
		fprintf(logfile,"sysex %d byete\n", exlen);
		for(int i = 0 ; i < exlen ; i++)
			fprintf(logfile,"%x ", sysexbuffer[i]);
		fprintf(logfile,"\n");
	}
	fclose(logfile);
#endif
		}
		IIMidiHdr->dwFlags &= ~MHDR_INQUEUE;
		IIMidiHdr->dwFlags |= MHDR_DONE;
	case MODM_DATA:
		EnterCriticalSection(&mim_section);
		evbpoint = evbwpoint;
		if (++evbwpoint >= EVBUFF_SIZE)
			evbwpoint -= EVBUFF_SIZE;
		evbuf[evbpoint].uMsg = uMsg;
		evbuf[evbpoint].event_time = get_current_calender_time();
		evbuf[evbpoint].dwParam1 = dwParam1;
		evbuf[evbpoint].dwParam2 = dwParam2;
		evbuf[evbpoint].exlen=exlen;
		evbuf[evbpoint].sysexbuffer=sysexbuffer;
		LeaveCriticalSection(&mim_section);
		return MMSYSERR_NOERROR;
		break;		
	case MODM_GETNUMDEVS:
		return 0x1;
		break;
	case MODM_CLOSE:
		if ( stop_rtthread != 0 || stop_thread != 0 ) return MIDIERR_STILLPLAYING;
		--OpenCount;
		if( OpenCount == 1){
			int maxloop=1000;
			
			stop_thread = 1;
			while( stop_thread != 0 && maxloop-- > 0) Sleep(1);
			if(stop_thread == 0) {
				stop_rtthread = 1;
				while( stop_rtthread != 0 && maxloop-- > 0) Sleep(1);
			}
			if(stop_rtthread != 0) TerminateThread(hRtsynThread, GetExitCodeThread(hRtsynThread,&Exit));
			if(stop_thread != 0) TerminateThread(hCalcThread, GetExitCodeThread(hCalcThread,&Exit));
			if(maxloop == 0){
				DeleteCriticalSection(&mim_section);
				InitializeCriticalSection(&mim_section);
			}
			stop_rtthread = 0;
			stop_thread = 0;
			CloseHandle(hRtsynThread);
			CloseHandle(hCalcThread);
			SetPriorityClass(GetCurrentProcess(), processPriority);
			modm_closed=1;
		}else{ 
			if(OpenCount < 0){
				OpenCount = 0;
				return MMSYSERR_NOTENABLED;
			}
		}
		return MMSYSERR_NOERROR;
		break;
	default:
		return MMSYSERR_NOERROR;
		break;
	}
}

