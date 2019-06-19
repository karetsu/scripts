#!/usr/bin/env bash

sleep .5

if ! pgrep -x polybar; then
  polybar left &
  polybar right &
else
  pkill -USR1 polybar
fi

echo "Bars launched..."
