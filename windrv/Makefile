# Makefile.in generated by automake 1.8.2 from Makefile.am.
# windrv/Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002,
# 2003, 2004  Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



# TiMidity++ -- MIDI to WAVE converter and player
# Copyright (C) 1999-2002 Masanao Izumo <mo@goice.co.jp>
# Copyright (C) 1995 Tuukka Toivonen <tt@cgs.fi>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

# Define follows if you want to change.
# Note that the definition of beginning with just one `#' implies
# default value from configure.


SOURCES = $(libtimiditydrv_a_SOURCES)

srcdir = .
top_srcdir = ..

pkgincludedir = $(includedir)/TiMidity++
top_builddir = ..
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
INSTALL = /bin/install -c
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
host_triplet = i686-pc-mingw32
DIST_COMMON = $(srcdir)/Makefile.am $(srcdir)/Makefile.in \
	$(top_srcdir)/common.makefile.in
subdir = windrv
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/autoconf/alsa.m4 \
	$(top_srcdir)/autoconf/ao.m4 $(top_srcdir)/autoconf/arts.m4 \
	$(top_srcdir)/autoconf/esd.m4 \
	$(top_srcdir)/autoconf/gtk-2.0.m4 \
	$(top_srcdir)/autoconf/gtk.m4 \
	$(top_srcdir)/autoconf/libFLAC.m4 \
	$(top_srcdir)/autoconf/libOggFLAC.m4 \
	$(top_srcdir)/autoconf/ogg.m4 $(top_srcdir)/autoconf/utils.m4 \
	$(top_srcdir)/autoconf/vorbis.m4 $(top_srcdir)/configure.in
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
mkinstalldirs = $(SHELL) $(top_srcdir)/autoconf/mkinstalldirs
CONFIG_HEADER = $(top_builddir)/config.h $(top_builddir)/interface.h
CONFIG_CLEAN_FILES =
AR = ar
ARFLAGS = cru
LIBRARIES = $(noinst_LIBRARIES)
libtimiditydrv_a_AR = $(AR) $(ARFLAGS)
#libtimiditydrv_a_DEPENDENCIES = $(top_builddir)/interface/interface.lib \
#	$(top_builddir)/libarc/arc.lib \
#	$(top_builddir)/libunimod/unimod.lib \
#	$(top_builddir)/utils/utils.lib \
#	$(top_builddir)/timidity/timidity.exe
##libtimiditydrv_a_DEPENDENCIES =  \
##	interface.lib arc.lib unimod.lib \
##	utils.lib timidity.lib
libtimiditydrv_a_DEPENDENCIES =  \
	$(top_builddir)/timidity/timidity.exe \
	$(top_builddir)/interface/libinterface.a \
	$(top_builddir)/libarc/libarc.a \
	$(top_builddir)/libunimod/libunimod.a \
	$(top_builddir)/utils/libutils.a
am_libtimiditydrv_a_OBJECTS = timiditydrv.$(OBJEXT) \
	timiwp_timidity.$(OBJEXT)
libtimiditydrv_a_OBJECTS = $(am_libtimiditydrv_a_OBJECTS)
SCRIPTS = $(noinst_SCRIPTS)
DEFAULT_INCLUDES = -I. -I$(srcdir) -I$(top_builddir) -I$(top_builddir)
depcomp = $(SHELL) $(top_srcdir)/autoconf/depcomp
am__depfiles_maybe = depfiles
DEP_FILES = ./$(DEPDIR)/timiditydrv.Po \
	./$(DEPDIR)/timiwp_timidity.Po
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
CXXCOMPILE = $(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) \
	$(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CXXFLAGS) $(CXXFLAGS)
CXXLD = $(CXX)
CXXLINK = $(CXXLD) $(AM_CXXFLAGS) $(CXXFLAGS) $(AM_LDFLAGS) $(LDFLAGS) \
	-o $@
SOURCES = $(libtimiditydrv_a_SOURCES)
DIST_SOURCES = $(libtimiditydrv_a_SOURCES)
ETAGS = etags
CTAGS = ctags
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
pkgdatadir = /usr/local/share/timidity

#CC= gcc
#CFLAGS =  -O2 -s -fomit-frame-pointer -mtune=athlon64 -march=pentium -mms-bitfields
# For pentium gcc
# For PGCC
#CPPFLAGS =  -DNO_MODULES -mms-bitfields -D__W32__ -DAU_W32

#DEFS = -DHAVE_CONFIG_H
#LDFLAGS = 
#LIBS = -lm       -lwinmm
#SHLD = gcc -mdll 
#SHCFLAGS =  -fPIC
#

#prefix = /usr/local
#exec_prefix = ${prefix}
#bindir = ${exec_prefix}/bin
#libdir = ${exec_prefix}/lib
#datadir = ${prefix}/share
#mandir = ${prefix}/man
pkglibdir = /usr/local/lib/timidity
ACLOCAL = ${SHELL} /d/Projects/timidity-cvs/timidity/autoconf/missing --run aclocal-1.8
ALSA_CFLAGS = 
ALSA_LIBS = 
AMDEP_FALSE = #
AMDEP_TRUE = 
AMTAR = ${SHELL} /d/Projects/timidity-cvs/timidity/autoconf/missing --run tar
AO_CFLAGS = 
AO_LIBS = 
ARTS_CFLAGS = 
ARTS_CONFIG = 
ARTS_LIBS = 
AUTOCONF = ${SHELL} /d/Projects/timidity-cvs/timidity/autoconf/missing --run autoconf
AUTOHEADER = ${SHELL} /d/Projects/timidity-cvs/timidity/autoconf/missing --run autoheader
AUTOMAKE = ${SHELL} /d/Projects/timidity-cvs/timidity/autoconf/missing --run automake-1.8
AWK = gawk
A_so_libs = 
BORLANDC_FALSE = 
BORLANDC_LDFLAGS = 
BORLANDC_START = 
BORLANDC_TRUE = #
CC = gcc
CCDEPMODE = depmode=gcc3
CFLAGS =  -O2 -s -fomit-frame-pointer -mtune=athlon64 -march=pentium -mms-bitfields
CPP = gcc -E
CPPFLAGS =  -DNO_MODULES -mms-bitfields -D__W32__ -DAU_W32
CXX = g++
CXXDEPMODE = depmode=gcc3
CXXFLAGS = -g -O2
CYGPATH_W = echo
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
DMC_FALSE = 
DMC_LDFLAGS = 
DMC_TRUE = #
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = grep -E
ELFILES = 
EMACS = no
EMACSLOADPATH = 
ENABLE_ALSASEQ_FALSE = 
ENABLE_ALSASEQ_TRUE = #
ENABLE_DYNAMIC_TCLTK_FALSE = 
ENABLE_DYNAMIC_TCLTK_TRUE = #
ENABLE_DYNAMIC_XAW_FALSE = 
ENABLE_DYNAMIC_XAW_TRUE = #
ENABLE_EMACS_FALSE = 
ENABLE_EMACS_TRUE = #
ENABLE_GTK_FALSE = 
ENABLE_GTK_TRUE = #
ENABLE_MOTIF_FALSE = 
ENABLE_MOTIF_TRUE = #
ENABLE_NCURSES_FALSE = 
ENABLE_NCURSES_TRUE = #
ENABLE_NETWORK_FALSE = 
ENABLE_NETWORK_TRUE = #
ENABLE_PLUGIN_FALSE = 
ENABLE_PLUGIN_TRUE = #
ENABLE_PORTMIDISYN_FALSE = 
ENABLE_PORTMIDISYN_TRUE = #
ENABLE_SERVER_FALSE = 
ENABLE_SERVER_TRUE = #
ENABLE_SLANG_FALSE = 
ENABLE_SLANG_TRUE = #
ENABLE_SOUND_SPEC_FALSE = 
ENABLE_SOUND_SPEC_TRUE = #
ENABLE_TCLTK_FALSE = 
ENABLE_TCLTK_TRUE = #
ENABLE_VT100_FALSE = 
ENABLE_VT100_TRUE = #
ENABLE_W32GUI_FALSE = 
ENABLE_W32GUI_TRUE = #
ENABLE_W32G_SYN_FALSE = 
ENABLE_W32G_SYN_TRUE = #
ENABLE_WINSYN_FALSE = 
ENABLE_WINSYN_TRUE = #
ENABLE_WRD_FALSE = 
ENABLE_WRD_TRUE = #
ENABLE_XAW_FALSE = 
ENABLE_XAW_TRUE = #
ENABLE_XSKIN_FALSE = 
ENABLE_XSKIN_TRUE = #
ESD_CFLAGS = 
ESD_CONFIG = 
ESD_LIBS = 
EXEEXT = .exe
EXTRALIBS =  -lwinmm
GTK_CFLAGS = 
GTK_CONFIG = 
GTK_LIBS = 
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = ${SHELL} $(install_sh) -c -s
INTERFACE_SRCS = 
LDFLAGS = 
LIBFLAC_CFLAGS = 
LIBFLAC_LIBS = 
LIBOBJS =  error$U.o
LIBOGGFLAC_CFLAGS = 
LIBOGGFLAC_LIBS = 
LIBS = -lm       -lwinmm
LN_S = ln -s
LTLIBOBJS =  error$U.lo
MAINT = #
MAINTAINER_MODE_FALSE = 
MAINTAINER_MODE_TRUE = #
MAKEINFO = ${SHELL} /d/Projects/timidity-cvs/timidity/autoconf/missing --run makeinfo
MINGWGCC_FALSE = #
MINGWGCC_TRUE = 
MSYS_FALSE = #
MSYS_TRUE = 
NEEDDLOPEN_FALSE = 
NEEDDLOPEN_TRUE = #
NEEDGETOPT_FALSE = 
NEEDGETOPT_TRUE = #
NETSRCS = 
OBJEXT = o
OGG_CFLAGS = 
OGG_LIBS = 
PACKAGE = TiMidity++
PACKAGE_BUGREPORT = root@mput.dip.jp
PACKAGE_NAME = TiMidity++
PACKAGE_STRING = TiMidity++ 2.13.2
PACKAGE_TARNAME = TiMidity++
PACKAGE_VERSION = 2.13.2
PATH_SEPARATOR = :
PKG_CONFIG = 
P_so_libs = 
RANLIB = ranlib
SET_MAKE = 
SHCFLAGS =  -fPIC
SHELL = /bin/sh
SHLD = gcc -mdll 
STRIP = 
SYSEXTRAS =  w32_a.c
T_so_libs = 
VCPP_FALSE = 
VCPP_LDFLAGS = 
VCPP_TRUE = #
VERSION = 2.13.2
VORBISENC_LIBS = 
VORBISFILE_LIBS = 
VORBIS_CFLAGS = 
VORBIS_LIBS = 
W32G_GUI_FALSE = 
W32G_GUI_TRUE = #
W32READDIR_FALSE = 
W32READDIR_TRUE = #
WATCOM_C_FALSE = 
WATCOM_C_TRUE = #
WATCOM_LDFLAGS = 
WINDRV_FALSE = 
WINDRV_TRUE = #
WISH = wish
W_so_libs = 
X_CFLAGS = 
X_EXTRA_LIBS = 
X_LIBS = 
X_PRE_LIBS = 
a_so_libs = 
ac_ct_CC = gcc
ac_ct_CXX = g++
ac_ct_RANLIB = ranlib
ac_ct_STRIP = 
am__fastdepCC_FALSE = #
am__fastdepCC_TRUE = 
am__fastdepCXX_FALSE = #
am__fastdepCXX_TRUE = 
am__include = include
am__leading_dot = .
am__quote = 
bindir = ${exec_prefix}/bin
build = i686-pc-mingw32
build_alias = 
build_cpu = i686
build_os = mingw32
build_vendor = pc
datadir = ${prefix}/share
dynamic_targets = 
e_so_libs = 
exec_prefix = ${prefix}
g_so_libs = 
host = i686-pc-mingw32
host_alias = 
host_cpu = i686
host_os = mingw32
host_vendor = pc
i_so_libs = 
includedir = ${prefix}/include
infodir = ${prefix}/info
install_sh = /d/Projects/timidity-cvs/timidity/autoconf/install-sh
k_so_libs = 
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
lispdir = ${datadir}/emacs/site-lisp
localstatedir = ${prefix}/var
m_so_libs = 
mandir = ${prefix}/man
mkdir_p = mkdir -p -- .
n_so_libs = 
oldincludedir = /usr/include
p_so_libs = 
prefix = /usr/local
program_transform_name = s,x,x,
r_so_libs = 
s_so_libs = 
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
so = dll
sysconfdir = ${prefix}/etc
target = i686-pc-mingw32
target_alias = 
target_cpu = i686
target_os = mingw32
target_vendor = pc
tcltk_dep = 
timidity_LDFLAGS = 
w_so_libs = 
#INSTALL = /bin/install -c

# Where to install the patches, config files.
PKGDATADIR = $(pkgdatadir)

# Where to install the Tcl code and the bitmaps.
# It also contains bitmaps which are shared with XAW interface.
PKGLIBDIR = $(pkglibdir)

# Where to install the dynamic link interface.
SHLIB_DIR = $(pkglibdir)

# Where to install timidity.el
ELISP_DIR = $(lispdir)

# If you want to change TCL_DIR, please do follows.
# * Add -DTKPROGPATH=\"$(TCL_DIR)/tkmidity.tcl\" to CPPFLAGS.
# * Make a symbolic link $(PKGLIBDIR)/bitmaps to $(TCL_DIR)/bitmaps
TCL_DIR = $(PKGLIBDIR)

# Define the timidity default file search path.
DEF_DEFAULT_PATH = -DDEFAULT_PATH=\"$(PKGDATADIR)\"

# You sould not change follows definitions. 
DEF_PKGDATADIR = -DPKGDATADIR=\"$(PKGDATADIR)\"
DEF_PKGLIBDIR = -DPKGLIBDIR=\"$(PKGLIBDIR)\"
DEF_SHLIB_DIR = -DSHLIB_DIR=\"$(SHLIB_DIR)\"
BITMAP_DIR = $(TCL_DIR)/bitmaps
AM_CXXFLAGS = $(CFLAGS)
INCLUDES = \
	-I$(top_srcdir) \
	-I$(top_srcdir)/libarc \
	-I$(top_srcdir)/libunimod \
	-I$(top_srcdir)/interface \
	-I$(top_srcdir)/utils \
	-I$(top_srcdir)/timidity \
	$(EXTRAINCS)

#noinst_SCRIPTS = timiditydrv.dll
#noinst_LIBRARIES = libtimiditydrv.a
libtimiditydrv_a_SOURCES = \
	timiditydrv.idl \
	timiditydrv.cpp \
	timiwp_timidity.h \
	timiwp_timidity.c \
	timiditydrv.def \
	mmddk.h

EXTRA_DIST = \
	 oemsetup.inf \
	 timiditydrv.inf  

CLEANFILES = timiditydrv.tlb
#libtimiditydrv_a_LIBADD = \
#	$(top_builddir)/interface/interface.lib \
#	$(top_builddir)/libarc/arc.lib \
#	$(top_builddir)/libunimod/unimod.lib \
#	$(top_builddir)/utils/utils.lib \
#	$(top_builddir)/timidity/timidity.exe

##libtimiditydrv_a_LIBADD = \
##	interface.lib \
##	arc.lib \
##	unimod.lib \
##	utils.lib \
##	timidity.lib

libtimiditydrv_a_LIBADD = \
	$(top_builddir)/timidity/timidity.exe \
	$(top_builddir)/interface/libinterface.a \
	$(top_builddir)/libarc/libarc.a \
	$(top_builddir)/libunimod/libunimod.a \
	$(top_builddir)/utils/libutils.a 

#libtimiditydrv_a_dep = \
#	$(top_builddir)/interface/interface.lib \
#	$(top_builddir)/libarc/arc.lib \
#	$(top_builddir)/libunimod/unimod.lib \
#	$(top_builddir)/utils/utils.lib \
#	$(top_builddir)/timidity/timidity.exe

##libtimiditydrv_a_dep = \
##	$(top_builddir)/interface/interface.lib \
##	$(top_builddir)/libarc/arc.lib \
##	$(top_builddir)/libunimod/unimod.lib \
##	$(top_builddir)/utils/utils.lib \
##	$(top_builddir)/timidity/timidity.lib

libtimiditydrv_a_dep = \
	$(top_builddir)/timidity/timidity.exe \
	$(top_builddir)/interface/libinterface.a \
	$(top_builddir)/libarc/libarc.a \
	$(top_builddir)/libunimod/libunimod.a \
	$(top_builddir)/utils/libutils.a 

#    DMC
#    MINGWGCC
DRV_LIBS = \
	kernel32.lib winspool.lib comdlg32.lib advapi32.lib oleaut32.lib \
	uuid.lib odbc32.lib wsock32.lib user32.lib shell32.lib winmm.lib

#	kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib \
#	advapi32.lib shell32.lib ole32.lib oleaut32.lib odbc32.lib odbccp32.lib \
#	ksguid.lib ksuser.lib
#VC_LINK = link.exe -dll -def:timiditydrv.def -implib:timiditydrv.lib -out:timiditydrv.dll
#DMC_LINK = dmc.exe -WD
#BORLANDC_LINK = ilink32.exe -Tpd
##WATCOM_LINK = link386.exe -dll -def:timiditydrv.def -implib:timiditydrv.lib -out:timiditydrv.dll
#source = '$<' object='$@' libtool=no \
#        depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
#        $(CXXDEPMODE) $(depcomp) \
#        $(CXXCOMPILE) -c -o $@ `$(CYGPATH_W) '$<'`

source = '$<' object='$@' libtool=no \
        depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
        $(CXXDEPMODE) $(depcomp) \
        $(CXXCOMPILE) -c -o $@ `$(CYGPATH_W) '$<'`

all: all-am

.SUFFIXES:
.SUFFIXES: .c .cpp .o .obj
$(srcdir)/Makefile.in: # $(srcdir)/Makefile.am $(top_srcdir)/common.makefile.in $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh \
		&& exit 0; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --gnu  windrv/Makefile'; \
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --gnu  windrv/Makefile
.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__depfiles_maybe)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__depfiles_maybe);; \
	esac;

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh

$(top_srcdir)/configure: # $(am__configure_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh
$(ACLOCAL_M4): # $(am__aclocal_m4_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh

clean-noinstLIBRARIES:
	-test -z "$(noinst_LIBRARIES)" || rm -f $(noinst_LIBRARIES)

mostlyclean-compile:
	-rm -f *.$(OBJEXT)

distclean-compile:
	-rm -f *.tab.c

include ./$(DEPDIR)/timiditydrv.Po
include ./$(DEPDIR)/timiwp_timidity.Po

.c.o:
	if $(COMPILE) -MT $@ -MD -MP -MF "$(DEPDIR)/$*.Tpo" -c -o $@ $<; \
	then mv -f "$(DEPDIR)/$*.Tpo" "$(DEPDIR)/$*.Po"; else rm -f "$(DEPDIR)/$*.Tpo"; exit 1; fi
#	source='$<' object='$@' libtool=no \
#	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
#	$(CCDEPMODE) $(depcomp) \
#	$(COMPILE) -c $<

.c.obj:
	if $(COMPILE) -MT $@ -MD -MP -MF "$(DEPDIR)/$*.Tpo" -c -o $@ `$(CYGPATH_W) '$<'`; \
	then mv -f "$(DEPDIR)/$*.Tpo" "$(DEPDIR)/$*.Po"; else rm -f "$(DEPDIR)/$*.Tpo"; exit 1; fi
#	source='$<' object='$@' libtool=no \
#	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
#	$(CCDEPMODE) $(depcomp) \
#	$(COMPILE) -c `$(CYGPATH_W) '$<'`

.cpp.o:
	if $(CXXCOMPILE) -MT $@ -MD -MP -MF "$(DEPDIR)/$*.Tpo" -c -o $@ $<; \
	then mv -f "$(DEPDIR)/$*.Tpo" "$(DEPDIR)/$*.Po"; else rm -f "$(DEPDIR)/$*.Tpo"; exit 1; fi
#	source='$<' object='$@' libtool=no \
#	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
#	$(CXXDEPMODE) $(depcomp) \
#	$(CXXCOMPILE) -c -o $@ $<

.cpp.obj:
	if $(CXXCOMPILE) -MT $@ -MD -MP -MF "$(DEPDIR)/$*.Tpo" -c -o $@ `$(CYGPATH_W) '$<'`; \
	then mv -f "$(DEPDIR)/$*.Tpo" "$(DEPDIR)/$*.Po"; else rm -f "$(DEPDIR)/$*.Tpo"; exit 1; fi
#	source='$<' object='$@' libtool=no \
#	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
#	$(CXXDEPMODE) $(depcomp) \
#	$(CXXCOMPILE) -c -o $@ `$(CYGPATH_W) '$<'`

ID: $(HEADERS) $(SOURCES) $(LISP) $(TAGS_FILES)
	list='$(SOURCES) $(HEADERS) $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	mkid -fID $$unique
tags: TAGS

TAGS:  $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS)  $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(ETAGS_ARGS)$$tags$$unique" \
	  || $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	     $$tags $$unique
ctags: CTAGS
CTAGS:  $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS)  $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(CTAGS_ARGS)$$tags$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$tags $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && cd $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) $$here

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags

distdir: $(DISTFILES)
	$(mkdir_p) $(distdir)/..
	@srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's|.|.|g'`; \
	list='$(DISTFILES)'; for file in $$list; do \
	  case $$file in \
	    $(srcdir)/*) file=`echo "$$file" | sed "s|^$$srcdirstrip/||"`;; \
	    $(top_srcdir)/*) file=`echo "$$file" | sed "s|^$$topsrcdirstrip/|$(top_builddir)/|"`;; \
	  esac; \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  dir=`echo "$$file" | sed -e 's,/[^/]*$$,,'`; \
	  if test "$$dir" != "$$file" && test "$$dir" != "."; then \
	    dir="/$$dir"; \
	    $(mkdir_p) "$(distdir)$$dir"; \
	  else \
	    dir=''; \
	  fi; \
	  if test -d $$d/$$file; then \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -pR $(srcdir)/$$file $(distdir)$$dir || exit 1; \
	    fi; \
	    cp -pR $$d/$$file $(distdir)$$dir || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
check-am: all-am
check: check-am
all-am: Makefile $(LIBRARIES) $(SCRIPTS)
installdirs:
install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:
	-test -z "$(CLEANFILES)" || rm -f $(CLEANFILES)

distclean-generic:
	-rm -f $(CONFIG_CLEAN_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean-am: clean-generic clean-noinstLIBRARIES mostlyclean-am

distclean: distclean-am
	-rm -rf ./$(DEPDIR)
	-rm -f Makefile
distclean-am: clean-am distclean-compile distclean-generic \
	distclean-tags

dvi: dvi-am

dvi-am:

html: html-am

info: info-am

info-am:

install-data-am:

install-exec-am:

install-info: install-info-am

install-man:

installcheck-am:

maintainer-clean: maintainer-clean-am
	-rm -rf ./$(DEPDIR)
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-compile mostlyclean-generic

pdf: pdf-am

pdf-am:

ps: ps-am

ps-am:

uninstall-am: uninstall-info-am

.PHONY: CTAGS GTAGS all all-am check check-am clean clean-generic \
	clean-noinstLIBRARIES ctags distclean distclean-compile \
	distclean-generic distclean-tags distdir dvi dvi-am html \
	html-am info info-am install install-am install-data \
	install-data-am install-exec install-exec-am install-info \
	install-info-am install-man install-strip installcheck \
	installcheck-am installdirs maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-compile \
	mostlyclean-generic pdf pdf-am ps ps-am tags uninstall \
	uninstall-am uninstall-info-am


SYSEXTRAS: timiditydrv.h

#timiditydrv.dll: libtimiditydrv.a $(libtimiditydrv_a_OBJECTS) $(libtimiditydrv_a_DEPENDENCIES) $(libtimiditydrv_a_dep)
#	@rm -f $@
#	$(VC_LINK) $(VCPP_LDFLAGS) $(libtimiditydrv_a_OBJECTS) $(libtimiditydrv_a_LIBADD) $(LIBS)
# -def:timiditydrv.def -implib:timiditydrv.lib -out:timiditydrv.dll

#timiditydrv.dll: libtimiditydrv.a $(libtimiditydrv_a_OBJECTS) $(libtimiditydrv_a_dep)
#	@rm -f $@ *.lib
#	cp $(libtimiditydrv_a_dep) .
#	$(DMC_LINK) $(DMC_LDFLAGS) $(libtimiditydrv_a_OBJECTS) $(libtimiditydrv_a_LIBADD) $(LIBS) timiditydrv.def -output $@
#timiditydrv.dll: libtimiditydrv.a $(libtimiditydrv_a_OBJECTS) $(libtimiditydrv_a_DEPENDENCIES) $(libtimiditydrv_a_dep)
#	@rm -f $@
#	$(BORLANDC_LINK) C0D32.OBJ $(libtimiditydrv_a_OBJECTS) \
#	$(top_builddir)\\interface\\interface.lib \
#	$(top_builddir)\\libarc\\arc.lib \
#	$(top_builddir)\\libunimod\\unimod.lib \
#	$(top_builddir)\\utils\\utils.lib \
#	$(top_builddir)\\timidity\\timidity.exe \
#	$(DRV_LIBS),$@,,import32.lib cw32mti.lib,timiditydrv.def
timiditydrv.dll: libtimiditydrv.a $(libtimiditydrv_a_OBJECTS) $(libtimiditydrv_a_DEPENDENCIES) $(libtimiditydrv_a_dep)
	@rm -f $@
	gcc -shared -def-file timiditydrv.def -Wl,--dll -Wl,--enable-stdcall-fixup -Wl,--out-implib libtimiditydrv.a -o $@ \
	$(libtimiditydrv_a_OBJECTS) $(libtimiditydrv_a_LIBADD) $(LIBS)
##timiditydrv.dll: libtimiditydrv.a $(libtimiditydrv_a_OBJECTS) $(libtimiditydrv_a_DEPENDENCIES) $(libtimiditydrv_a_dep)
##	@rm -f libtimi_p_dll.a
##	$(WATCOM_LINK) $(libtimiditydrv_a_OBJECTS) $(libtimiditydrv_a_LIBADD) $(LIBS)

#WATCOM_LINK = wlink
#timiditydrv.dll: libtimiditydrv.a $(libtimiditydrv_a_OBJECTS) $(libtimiditydrv_a_DEPENDENCIES) $(libtimiditydrv_a_dep)
#	@rm -f $@
#	$(WATCOM_LINK) SYSTEM nt_dll initinstance terminstance \
#	`for foo in $(libtimiditydrv_a_OBJECTS) ; do echo "File $$foo "; done;` \
#	Name $@ \
#	Library $(top_builddir)\\interface\\interface.lib \
#	Library $(top_builddir)\\libarc\\arc.lib \
#	Library $(top_builddir)\\libunimod\\unimod.lib \
#	Library $(top_builddir)\\utils\\utils.lib \
#	Library $(top_builddir)\\timidity\\timidity.exe \
#	`for foo in  $(DRV_LIBS) ; do echo "Library $$foo"; done;` \
#	EXPort DllCanUnloadNow,DllGetClassObject,DllRegisterServer,DllUnregisterServer,DriverProc,modMessage
#     WATCOM_C
#    MINGWGCC
#     BORLANDC
#    DMC
#    VCPP

libtimiditydrv.a: $(libtimiditydrv_a_OBJECTS)  $(libtimiditydrv_a_dep)
	touch $@ 

#timiditydrv_i.c timiditydrv_p.c timiditydrv.h:timiditydrv.idl
#	midl -nologo timiditydrv.idl 
#Get cpp.exe from Free Pascal and rename it to fpcpp.exe.
#timiditydrv_i.c timiditydrv_p.c timiditydrv.h:timiditydrv.idl
#	midl -cpp_cmd fpcpp -cpp_opt -E timiditydrv.idl
#Get cpp.exe from Free Pascal and rename it to fpcpp.exe.
#timiditydrv_i.c timiditydrv_p.c timiditydrv.h:timiditydrv.idl
#	midl -cpp_cmd fpcpp -cpp_opt -E -Ii:/dm/include/win32 timiditydrv.idl
#Get cpp.exe from Free Pascal and rename it to fpcpp.exe.
timiditydrv_i.c timiditydrv_p.c timiditydrv.h:timiditydrv.idl
	midl -cpp_cmd fpcpp -cpp_opt -E timiditydrv.idl
#Get cpp.exe from Free Pascal and rename it to fpcpp.exe.
##timiditydrv_i.c timiditydrv_p.c timiditydrv.h:timiditydrv.idl
##	midl -cpp_cmd fpcpp -cpp_opt -E timiditydrv.idl
#     WATCOM_C
#     MINGWGCC
#     BORLANDC
#     DMC
#     VCPP

objs: $(libtimiditydrv_a_OBJECTS) $(libtimiditydrv_a_DEPENDENCIES) 
	@:

timiditydrv.o: timiditydrv.cpp timiditydrv.h
#timiditydrv.obj: timiditydrv.cpp timiditydrv.h
#     MINGWGCC

uninstall-info-am:

clean:
	-rm -f *.o *.a *.dll *.obj *.RES *.idb *.pch *.lib
	-rm -f timiditydrv_i.c timiditydrv_p.c timiditydrv.h dlldata.c
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
