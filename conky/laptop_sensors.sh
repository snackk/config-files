#!/bin/bash

source $HOME/git/arch-config-files/conky/conky_utils.conf

cpu_temp=$(sensors | grep "Core 1:" | cut -c17-18)
graphic_temp=$(sensors | grep id | cut -c17-18)

if [[ "$cpu_temp" -ge $MAX_TEMP_THRESHOLD ]]; then 
	print_label_string_color1 "CPU " "$(echo $cpu_temp)ºC "
else
	print_label_string_color2 "CPU " "$(echo $cpu_temp)ºC "
fi	

print_label_string_color1 "" " "	#nasty hack, used to add +1 space between cpu and grapics

if [[ "$graphic_temp" -ge $MAX_TEMP_THRESHOLD ]]; then 
	print_label_string_color1 " GRAPHICS " "$(echo $graphic_temp)ºC"
else
	print_label_string_color2 " GRAPHICS " "$(echo $graphic_temp)ºC"
fi	
