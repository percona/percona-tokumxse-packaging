#!/bin/bash
#
PATH="${PATH}:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin"
#
if [ -f /sys/kernel/mm/transparent_hugepage/enabled ]; then
   echo never > /sys/kernel/mm/transparent_hugepage/enabled
fi
#
if [ -f /sys/kernel/mm/transparent_hugepage/defrag ]; then
	echo never > /sys/kernel/mm/transparent_hugepage/defrag
fi
#
