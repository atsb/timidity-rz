#!/bin/bash
cd utils
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../timidity  -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT bitset.o -MD -MP -MF ".deps/bitset.Tpo" -c -o bitset.o bitset.c; \
then mv -f ".deps/bitset.Tpo" ".deps/bitset.Po"; else rm -f ".deps/bitset.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../timidity  -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT fft4g.o -MD -MP -MF ".deps/fft4g.Tpo" -c -o fft4g.o fft4g.c; \
then mv -f ".deps/fft4g.Tpo" ".deps/fft4g.Po"; else rm -f ".deps/fft4g.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../timidity  -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT mblock.o -MD -MP -MF ".deps/mblock.Tpo" -c -o mblock.o mblock.c; \
then mv -f ".deps/mblock.Tpo" ".deps/mblock.Po"; else rm -f ".deps/mblock.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../timidity  -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT memb.o -MD -MP -MF ".deps/memb.Tpo" -c -o memb.o memb.c; \
then mv -f ".deps/memb.Tpo" ".deps/memb.Po"; else rm -f ".deps/memb.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../timidity  -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT nkflib.o -MD -MP -MF ".deps/nkflib.Tpo" -c -o nkflib.o nkflib.c; \
then mv -f ".deps/nkflib.Tpo" ".deps/nkflib.Po"; else rm -f ".deps/nkflib.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../timidity  -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT strtab.o -MD -MP -MF ".deps/strtab.Tpo" -c -o strtab.o strtab.c; \
then mv -f ".deps/strtab.Tpo" ".deps/strtab.Po"; else rm -f ".deps/strtab.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../timidity  -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT support.o -MD -MP -MF ".deps/support.Tpo" -c -o support.o support.c; \
then mv -f ".deps/support.Tpo" ".deps/support.Po"; else rm -f ".deps/support.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../timidity  -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT timer.o -MD -MP -MF ".deps/timer.Tpo" -c -o timer.o timer.c; \
then mv -f ".deps/timer.Tpo" ".deps/timer.Po"; else rm -f ".deps/timer.Tpo"; exit 1; fi
rm -f libutils.a
ar cru libutils.a bitset.o fft4g.o mblock.o memb.o nkflib.o strtab.o support.o timer.o    
ranlib libutils.a
cd ../libarc
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT arc.o -MD -MP -MF ".deps/arc.Tpo" -c -o arc.o arc.c; \
then mv -f ".deps/arc.Tpo" ".deps/arc.Po"; else rm -f ".deps/arc.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT arc_lzh.o -MD -MP -MF ".deps/arc_lzh.Tpo" -c -o arc_lzh.o arc_lzh.c; \
then mv -f ".deps/arc_lzh.Tpo" ".deps/arc_lzh.Po"; else rm -f ".deps/arc_lzh.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT arc_mime.o -MD -MP -MF ".deps/arc_mime.Tpo" -c -o arc_mime.o arc_mime.c; \
then mv -f ".deps/arc_mime.Tpo" ".deps/arc_mime.Po"; else rm -f ".deps/arc_mime.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT arc_tar.o -MD -MP -MF ".deps/arc_tar.Tpo" -c -o arc_tar.o arc_tar.c; \
then mv -f ".deps/arc_tar.Tpo" ".deps/arc_tar.Po"; else rm -f ".deps/arc_tar.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT arc_zip.o -MD -MP -MF ".deps/arc_zip.Tpo" -c -o arc_zip.o arc_zip.c; \
then mv -f ".deps/arc_zip.Tpo" ".deps/arc_zip.Po"; else rm -f ".deps/arc_zip.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT deflate.o -MD -MP -MF ".deps/deflate.Tpo" -c -o deflate.o deflate.c; \
then mv -f ".deps/deflate.Tpo" ".deps/deflate.Po"; else rm -f ".deps/deflate.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT explode.o -MD -MP -MF ".deps/explode.Tpo" -c -o explode.o explode.c; \
then mv -f ".deps/explode.Tpo" ".deps/explode.Po"; else rm -f ".deps/explode.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT inflate.o -MD -MP -MF ".deps/inflate.Tpo" -c -o inflate.o inflate.c; \
then mv -f ".deps/inflate.Tpo" ".deps/inflate.Po"; else rm -f ".deps/inflate.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT unlzh.o -MD -MP -MF ".deps/unlzh.Tpo" -c -o unlzh.o unlzh.c; \
then mv -f ".deps/unlzh.Tpo" ".deps/unlzh.Po"; else rm -f ".deps/unlzh.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT url.o -MD -MP -MF ".deps/url.Tpo" -c -o url.o url.c; \
then mv -f ".deps/url.Tpo" ".deps/url.Po"; else rm -f ".deps/url.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT url_b64decode.o -MD -MP -MF ".deps/url_b64decode.Tpo" -c -o url_b64decode.o url_b64decode.c; \
then mv -f ".deps/url_b64decode.Tpo" ".deps/url_b64decode.Po"; else rm -f ".deps/url_b64decode.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT url_buff.o -MD -MP -MF ".deps/url_buff.Tpo" -c -o url_buff.o url_buff.c; \
then mv -f ".deps/url_buff.Tpo" ".deps/url_buff.Po"; else rm -f ".deps/url_buff.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT url_cache.o -MD -MP -MF ".deps/url_cache.Tpo" -c -o url_cache.o url_cache.c; \
then mv -f ".deps/url_cache.Tpo" ".deps/url_cache.Po"; else rm -f ".deps/url_cache.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT url_dir.o -MD -MP -MF ".deps/url_dir.Tpo" -c -o url_dir.o url_dir.c; \
then mv -f ".deps/url_dir.Tpo" ".deps/url_dir.Po"; else rm -f ".deps/url_dir.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT url_file.o -MD -MP -MF ".deps/url_file.Tpo" -c -o url_file.o url_file.c; \
then mv -f ".deps/url_file.Tpo" ".deps/url_file.Po"; else rm -f ".deps/url_file.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT url_hqxdecode.o -MD -MP -MF ".deps/url_hqxdecode.Tpo" -c -o url_hqxdecode.o url_hqxdecode.c; \
then mv -f ".deps/url_hqxdecode.Tpo" ".deps/url_hqxdecode.Po"; else rm -f ".deps/url_hqxdecode.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT url_inflate.o -MD -MP -MF ".deps/url_inflate.Tpo" -c -o url_inflate.o url_inflate.c; \
then mv -f ".deps/url_inflate.Tpo" ".deps/url_inflate.Po"; else rm -f ".deps/url_inflate.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT url_mem.o -MD -MP -MF ".deps/url_mem.Tpo" -c -o url_mem.o url_mem.c; \
then mv -f ".deps/url_mem.Tpo" ".deps/url_mem.Po"; else rm -f ".deps/url_mem.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT url_pipe.o -MD -MP -MF ".deps/url_pipe.Tpo" -c -o url_pipe.o url_pipe.c; \
then mv -f ".deps/url_pipe.Tpo" ".deps/url_pipe.Po"; else rm -f ".deps/url_pipe.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT url_qsdecode.o -MD -MP -MF ".deps/url_qsdecode.Tpo" -c -o url_qsdecode.o url_qsdecode.c; \
then mv -f ".deps/url_qsdecode.Tpo" ".deps/url_qsdecode.Po"; else rm -f ".deps/url_qsdecode.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT url_uudecode.o -MD -MP -MF ".deps/url_uudecode.Tpo" -c -o url_uudecode.o url_uudecode.c; \
then mv -f ".deps/url_uudecode.Tpo" ".deps/url_uudecode.Po"; else rm -f ".deps/url_uudecode.Tpo"; exit 1; fi
rm -f libarc.a
ar cru libarc.a arc.o arc_lzh.o arc_mime.o arc_tar.o arc_zip.o deflate.o explode.o inflate.o unlzh.o url.o url_b64decode.o url_buff.o url_cache.o url_dir.o url_file.o url_hqxdecode.o url_inflate.o url_mem.o url_pipe.o url_qsdecode.o url_uudecode.o 
ranlib libarc.a
cd ../interface
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../libarc -I../utils  -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT dumb_c.o -MD -MP -MF ".deps/dumb_c.Tpo" -c -o dumb_c.o dumb_c.c; \
then mv -f ".deps/dumb_c.Tpo" ".deps/dumb_c.Po"; else rm -f ".deps/dumb_c.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../libarc -I../utils  -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT wrdt_dumb.o -MD -MP -MF ".deps/wrdt_dumb.Tpo" -c -o wrdt_dumb.o wrdt_dumb.c; \
then mv -f ".deps/wrdt_dumb.Tpo" ".deps/wrdt_dumb.Po"; else rm -f ".deps/wrdt_dumb.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../libarc -I../utils  -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT wrdt_tty.o -MD -MP -MF ".deps/wrdt_tty.Tpo" -c -o wrdt_tty.o wrdt_tty.c; \
then mv -f ".deps/wrdt_tty.Tpo" ".deps/wrdt_tty.Po"; else rm -f ".deps/wrdt_tty.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../timidity -I../libarc -I../utils  -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT wrdt_wcon.o -MD -MP -MF ".deps/wrdt_wcon.Tpo" -c -o wrdt_wcon.o wrdt_wcon.c; \
then mv -f ".deps/wrdt_wcon.Tpo" ".deps/wrdt_wcon.Po"; else rm -f ".deps/wrdt_wcon.Tpo"; exit 1; fi
rm -f libinterface.a
ar cru libinterface.a dumb_c.o wrdt_dumb.o wrdt_tty.o   wrdt_wcon.o  
ranlib libinterface.a
cd ../timidity
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT aiff_a.o -MD -MP -MF ".deps/aiff_a.Tpo" -c -o aiff_a.o aiff_a.c; \
then mv -f ".deps/aiff_a.Tpo" ".deps/aiff_a.Po"; else rm -f ".deps/aiff_a.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT aq.o -MD -MP -MF ".deps/aq.Tpo" -c -o aq.o aq.c; \
then mv -f ".deps/aq.Tpo" ".deps/aq.Po"; else rm -f ".deps/aq.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT au_a.o -MD -MP -MF ".deps/au_a.Tpo" -c -o au_a.o au_a.c; \
then mv -f ".deps/au_a.Tpo" ".deps/au_a.Po"; else rm -f ".deps/au_a.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT audio_cnv.o -MD -MP -MF ".deps/audio_cnv.Tpo" -c -o audio_cnv.o audio_cnv.c; \
then mv -f ".deps/audio_cnv.Tpo" ".deps/audio_cnv.Po"; else rm -f ".deps/audio_cnv.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT common.o -MD -MP -MF ".deps/common.Tpo" -c -o common.o common.c; \
then mv -f ".deps/common.Tpo" ".deps/common.Po"; else rm -f ".deps/common.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT controls.o -MD -MP -MF ".deps/controls.Tpo" -c -o controls.o controls.c; \
then mv -f ".deps/controls.Tpo" ".deps/controls.Po"; else rm -f ".deps/controls.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT effect.o -MD -MP -MF ".deps/effect.Tpo" -c -o effect.o effect.c; \
then mv -f ".deps/effect.Tpo" ".deps/effect.Po"; else rm -f ".deps/effect.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT filter.o -MD -MP -MF ".deps/filter.Tpo" -c -o filter.o filter.c; \
then mv -f ".deps/filter.Tpo" ".deps/filter.Po"; else rm -f ".deps/filter.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT freq.o -MD -MP -MF ".deps/freq.Tpo" -c -o freq.o freq.c; \
then mv -f ".deps/freq.Tpo" ".deps/freq.Po"; else rm -f ".deps/freq.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT instrum.o -MD -MP -MF ".deps/instrum.Tpo" -c -o instrum.o instrum.c; \
then mv -f ".deps/instrum.Tpo" ".deps/instrum.Po"; else rm -f ".deps/instrum.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT list_a.o -MD -MP -MF ".deps/list_a.Tpo" -c -o list_a.o list_a.c; \
then mv -f ".deps/list_a.Tpo" ".deps/list_a.Po"; else rm -f ".deps/list_a.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT loadtab.o -MD -MP -MF ".deps/loadtab.Tpo" -c -o loadtab.o loadtab.c; \
then mv -f ".deps/loadtab.Tpo" ".deps/loadtab.Po"; else rm -f ".deps/loadtab.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT m2m.o -MD -MP -MF ".deps/m2m.Tpo" -c -o m2m.o m2m.c; \
then mv -f ".deps/m2m.Tpo" ".deps/m2m.Po"; else rm -f ".deps/m2m.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT mfi.o -MD -MP -MF ".deps/mfi.Tpo" -c -o mfi.o mfi.c; \
then mv -f ".deps/mfi.Tpo" ".deps/mfi.Po"; else rm -f ".deps/mfi.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT miditrace.o -MD -MP -MF ".deps/miditrace.Tpo" -c -o miditrace.o miditrace.c; \
then mv -f ".deps/miditrace.Tpo" ".deps/miditrace.Po"; else rm -f ".deps/miditrace.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT mix.o -MD -MP -MF ".deps/mix.Tpo" -c -o mix.o mix.c; \
then mv -f ".deps/mix.Tpo" ".deps/mix.Po"; else rm -f ".deps/mix.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT mod.o -MD -MP -MF ".deps/mod.Tpo" -c -o mod.o mod.c; \
then mv -f ".deps/mod.Tpo" ".deps/mod.Po"; else rm -f ".deps/mod.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT mod2midi.o -MD -MP -MF ".deps/mod2midi.Tpo" -c -o mod2midi.o mod2midi.c; \
then mv -f ".deps/mod2midi.Tpo" ".deps/mod2midi.Po"; else rm -f ".deps/mod2midi.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT modmid_a.o -MD -MP -MF ".deps/modmid_a.Tpo" -c -o modmid_a.o modmid_a.c; \
then mv -f ".deps/modmid_a.Tpo" ".deps/modmid_a.Po"; else rm -f ".deps/modmid_a.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT mt19937ar.o -MD -MP -MF ".deps/mt19937ar.Tpo" -c -o mt19937ar.o mt19937ar.c; \
then mv -f ".deps/mt19937ar.Tpo" ".deps/mt19937ar.Po"; else rm -f ".deps/mt19937ar.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT optcode.o -MD -MP -MF ".deps/optcode.Tpo" -c -o optcode.o optcode.c; \
then mv -f ".deps/optcode.Tpo" ".deps/optcode.Po"; else rm -f ".deps/optcode.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT output.o -MD -MP -MF ".deps/output.Tpo" -c -o output.o output.c; \
then mv -f ".deps/output.Tpo" ".deps/output.Po"; else rm -f ".deps/output.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT playmidi.o -MD -MP -MF ".deps/playmidi.Tpo" -c -o playmidi.o playmidi.c; \
then mv -f ".deps/playmidi.Tpo" ".deps/playmidi.Po"; else rm -f ".deps/playmidi.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT quantity.o -MD -MP -MF ".deps/quantity.Tpo" -c -o quantity.o quantity.c; \
then mv -f ".deps/quantity.Tpo" ".deps/quantity.Po"; else rm -f ".deps/quantity.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT raw_a.o -MD -MP -MF ".deps/raw_a.Tpo" -c -o raw_a.o raw_a.c; \
then mv -f ".deps/raw_a.Tpo" ".deps/raw_a.Po"; else rm -f ".deps/raw_a.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT rcp.o -MD -MP -MF ".deps/rcp.Tpo" -c -o rcp.o rcp.c; \
then mv -f ".deps/rcp.Tpo" ".deps/rcp.Po"; else rm -f ".deps/rcp.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT readmidi.o -MD -MP -MF ".deps/readmidi.Tpo" -c -o readmidi.o readmidi.c; \
then mv -f ".deps/readmidi.Tpo" ".deps/readmidi.Po"; else rm -f ".deps/readmidi.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT recache.o -MD -MP -MF ".deps/recache.Tpo" -c -o recache.o recache.c; \
then mv -f ".deps/recache.Tpo" ".deps/recache.Po"; else rm -f ".deps/recache.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT calcnewt.o -MD -MP -MF ".deps/calcnewt.Tpo" -c -o calcnewt.o calcnewt.c; \
then mv -f ".deps/calcnewt.Tpo" ".deps/calcnewt.Po"; else rm -f ".deps/calcnewt.Tpo"; exit 1; fi
gcc  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64   -o calcnewt.exe  calcnewt.o  -lm       -lwinmm
./calcnewt > newton_table.c
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT resample.o -MD -MP -MF ".deps/resample.Tpo" -c -o resample.o resample.c; \
then mv -f ".deps/resample.Tpo" ".deps/resample.Po"; else rm -f ".deps/resample.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT reverb.o -MD -MP -MF ".deps/reverb.Tpo" -c -o reverb.o reverb.c; \
then mv -f ".deps/reverb.Tpo" ".deps/reverb.Po"; else rm -f ".deps/reverb.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT sbkconv.o -MD -MP -MF ".deps/sbkconv.Tpo" -c -o sbkconv.o sbkconv.c; \
then mv -f ".deps/sbkconv.Tpo" ".deps/sbkconv.Po"; else rm -f ".deps/sbkconv.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT sffile.o -MD -MP -MF ".deps/sffile.Tpo" -c -o sffile.o sffile.c; \
then mv -f ".deps/sffile.Tpo" ".deps/sffile.Po"; else rm -f ".deps/sffile.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT sfitem.o -MD -MP -MF ".deps/sfitem.Tpo" -c -o sfitem.o sfitem.c; \
then mv -f ".deps/sfitem.Tpo" ".deps/sfitem.Po"; else rm -f ".deps/sfitem.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT smfconv.o -MD -MP -MF ".deps/smfconv.Tpo" -c -o smfconv.o smfconv.c; \
then mv -f ".deps/smfconv.Tpo" ".deps/smfconv.Po"; else rm -f ".deps/smfconv.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT smplfile.o -MD -MP -MF ".deps/smplfile.Tpo" -c -o smplfile.o smplfile.c; \
then mv -f ".deps/smplfile.Tpo" ".deps/smplfile.Po"; else rm -f ".deps/smplfile.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT sndfont.o -MD -MP -MF ".deps/sndfont.Tpo" -c -o sndfont.o sndfont.c; \
then mv -f ".deps/sndfont.Tpo" ".deps/sndfont.Po"; else rm -f ".deps/sndfont.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT tables.o -MD -MP -MF ".deps/tables.Tpo" -c -o tables.o tables.c; \
then mv -f ".deps/tables.Tpo" ".deps/tables.Po"; else rm -f ".deps/tables.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT timidity.o -MD -MP -MF ".deps/timidity.Tpo" -c -o timidity.o timidity.c; \
then mv -f ".deps/timidity.Tpo" ".deps/timidity.Po"; else rm -f ".deps/timidity.Tpo"; exit 1; fi
gcc -DHAVE_CONFIG_H -I. -I. -I.. -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -c ./version.c
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT wave_a.o -MD -MP -MF ".deps/wave_a.Tpo" -c -o wave_a.o wave_a.c; \
then mv -f ".deps/wave_a.Tpo" ".deps/wave_a.Po"; else rm -f ".deps/wave_a.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT wrd_read.o -MD -MP -MF ".deps/wrd_read.Tpo" -c -o wrd_read.o wrd_read.c; \
then mv -f ".deps/wrd_read.Tpo" ".deps/wrd_read.Po"; else rm -f ".deps/wrd_read.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT wrdt.o -MD -MP -MF ".deps/wrdt.Tpo" -c -o wrdt.o wrdt.c; \
then mv -f ".deps/wrdt.Tpo" ".deps/wrdt.Po"; else rm -f ".deps/wrdt.Tpo"; exit 1; fi
if gcc -DHAVE_CONFIG_H -I. -I. -I.. -I.. -I../libarc -I../interface -I../utils   -DNO_MODULES -D__W32__ -DAU_W32  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64 -MT w32_a.o -MD -MP -MF ".deps/w32_a.Tpo" -c -o w32_a.o w32_a.c; \
then mv -f ".deps/w32_a.Tpo" ".deps/w32_a.Po"; else rm -f ".deps/w32_a.Tpo"; exit 1; fi
gcc  -O2 -s -fomit-frame-pointer -mtune=generic -march=x86-64   -o timidity.exe  aiff_a.o aq.o au_a.o audio_cnv.o common.o controls.o effect.o filter.o freq.o instrum.o list_a.o loadtab.o m2m.o mfi.o miditrace.o mix.o mod.o mod2midi.o modmid_a.o mt19937ar.o optcode.o output.o playmidi.o quantity.o raw_a.o rcp.o readmidi.o recache.o resample.o reverb.o sbkconv.o sffile.o sfitem.o smfconv.o smplfile.o sndfont.o tables.o timidity.o version.o wave_a.o wrd_read.o wrdt.o w32_a.o ../libarc/libarc.a ../interface/libinterface.a ../utils/libutils.a  -lm       -lwinmm
cd ../doc
rm -f timidity.1; ln -s ./C/timidity.1 .
rm -f timidity.cfg.5; ln -s ./C/timidity.cfg.5 .