#!/bin/sh
#
# Waits for a listening tcp port then executes a command
#

host="$1"
port="$2"
shift 2

usage() {
    echo "USAGE:"
    echo "    waitfor <host> <port> <command> [command-args]"
}

[ -z "$host" ] && usage
[ -z "$port" ] && usage

while :
do
    nc -z "$host" "$port"
    exitcode=$?
    [ $exitcode -eq 0 ] && break
    echo "$host $port unavailable"
    sleep 2
done

exec $@ 

