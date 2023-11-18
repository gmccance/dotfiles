function fish_right_prompt -d "Write out the right prompt"
    	set color red
	
	set DAT $(date '+%H:%M:%S %m/%d/%y')
	set DO (cat ~/.do)
        printf '[%s%s] %s%s%s' (set_color red) $DO \
           (set_color normal) $DAT

end
