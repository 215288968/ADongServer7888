#!/bin/sh

while true

do

ps -ef | grep "frpc" | grep -v "grep"

if [ “$?” -eq 1 ]

then

nohup ./frp_0.33.0_linux_amd64/frpc -c ./frpc.ini >/dev/null 2>&1 &

echo “process has been restarted!”

else

echo “process already started!”

fi

sleep 10

done
