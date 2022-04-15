if running of application "System Preferences" then
    quit application "System Preferences"
    delay 1
end if

tell application "System Preferences"
	activate
	#get every anchor of current pane 
	reveal anchor "displaysDisplayTab" of pane id "com.apple.preference.displays" #Shows the display page
	#=========
	tell application "System Events"
		tell process "System Preferences"
			name of every tab 1 of window
		end tell
	end tell
end tell