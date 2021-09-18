#!/usr/bin/env bash

# Polybar launching script 

# Terminate already running bar instances
killall -w -q  -SIGKILL polybar


# Launch Polybar, 
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
date | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar main 2>&1 | tee -a /tmp/polybar1.log & disown 
polybar   -c $HOME/.config/polybar/config-example example 2>&1 | tee -a /tmp/polybar2.log & disown 
# 4K monitor
polybar   -c $HOME/.config/polybar/config-4k example 2>&1 | tee -a /tmp/polybar3.log & disown 

echo "Polybar launched..."
