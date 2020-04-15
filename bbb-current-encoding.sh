#!/bin/sh -e

# show current encoding task and it's rank

#id=$( ps ax | grep ffmpeg | grep presentation | sed -e 's,^.*presentation/,,' -e 's,/.*$,,' )
id=$( ps ax | grep process/presentation.rb | grep ruby | sed 's/^.*-m //' )
if [ ! -z "$id" ] ; then
	echo "# $(date) $id $(cat /proc/loadavg)"
	bbb-record --list | cat -n | head -200 | grep $id && exit 0
fi
