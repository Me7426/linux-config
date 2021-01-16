#!/bin/env bash

#pid=`pidof ario`
swaymsg '[app_id="ario"] kill'

if [[ "$?" == "2" ]]; then
	ario
fi
