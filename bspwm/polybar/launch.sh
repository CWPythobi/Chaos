#!/bin/bash

# Terminate already running bar instances
#killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
#polybar bspwm 2>&1 | tee -a /tmp/polybar.log & disown

#echo "Polybar launched..."

DIR="$HOME/.config/bspwm/polybar"
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q bspwm -c "$DIR"/config.ini &

