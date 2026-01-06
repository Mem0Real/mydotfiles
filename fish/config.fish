source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

if status is-login
	if test (tty) = "/dev/tty1"
		exec start-hyprland &> /dev/null
	end
end

function fish_greeting 
	# do nothing
end

# function fish_prompt
# 	echo (pwd)
# 	echo "⦔ "
# end

set --universal pure_show_system_time false
set --universal pure_symbol_prompt "➤"
