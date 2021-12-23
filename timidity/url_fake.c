/* [RH] This file implements all the url_ functions as stubs, so
 * the source can be built without libarc without making significant
 * changes.
 */

#ifdef NO_LIBARC

#include <stdlib.h>
#include <stdio.h>

typedef FILE *URL;

int url_errno;

URL url_open(char *fname)
{
	if(!strcmp(fname, "-"))
	{
		return stdin;
	}
	return fopen(fname, "rb");
}

void url_close(URL url)
{
	if(url == stdin)
		rewind(url);
	else if(url != NULL)
		fclose(url);
}

long url_read(URL url, void *buff, long n)
{
	if((n = (long)fread(buff, 1, n, url)) == 0)
	{
		if(ferror(url))
		{
			url_errno = errno;
			return -1;
		}
		return 0;
	}
	return n;
}

long url_nread(URL url, void *buff, long n)
{
}

char *url_gets(URL url, char *buff, int n)
{
    return fgets(buff, n, url);
}

int url_fgetc(URL url)
{
	return getc(url);
}

long url_seek(URL url, long offset, int whence)
{
	return fseek(url, offset, whence);
}

long url_tell(URL url)
{
	return ftell(url);
}

void url_skip(URL url, long n)
{
	fseek(url, n, SEEK_CUR);
}

void url_rewind(URL url)
{
	frewind(url);
}

URL alloc_url(int size)
{
}

/*
url_mem_open

url_arc_open

skip_gzip_header

url_cache_disable

url_cache_open

url_cache_disable

url_inflate_open

url_enexpand_home_dir

expand_archive_names

url_expand_home_dir

open_deflate_handler

zip_deflate

close_deflate_handler

url_check_type

uudecode_unquote_html

arc_error_handler

url_add_module

free_archive_files

URL_module_file

URL_module_dir

URL_module_pipe

get_archive_type

alloc_url

url_errno
*/

#endif /* NO_LIBARC */
