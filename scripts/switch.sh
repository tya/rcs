#!/bin/bash
# Search through open programs and switch to their tag
application=$(
      # List all running programs
      wmctrl -l |\
      # Show only app-names
      cut -d" " -f5 |\
      # Pipe to dmenu ($@ to include font settings from dwm/config.h)
      dmenu -i -p "Switch to" -fn "-bitstream-*-*-*-*-*-16-*-*-*-*-*-*-*" $@
)

# Switch to chosen application
wmctrl -a "${application}"
