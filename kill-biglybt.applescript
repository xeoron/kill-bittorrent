(* Jason Campisi
   name: kill-bittorrent
   version: v1.1
   date: 07.18.24
   Released under the GPL 3
   Purpose: Mac build of bittorrent does not always close, and sort of hangs infinitely instead of shutting off when you tell it. 
   So this program is meant to kill the zombie program.
*)
property program : "biglybt" --search for this keyword and tell the program to shutdown now!

on open these_items
	(* these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"
	NOTE: global variables store whatever you put in them, even after the program restarts 
	it will contain what was last placed in it, there by ignoring whatever the 
	hardcoded preset value is. By using bug/feature, reprogramming the default launch 
	program is easy using the below droplet code *)
	
	set prog to ""
	set prog to these_items as string
	
	#isolate only the program-name, then strip out ".app" & set it to the global 'program' variable
	set text item delimiters to ":"
	set prog to text item 3 of prog
	set text item delimiters to "."
	set prog to text item 1 of prog
	if prog is not "" then
		copy prog to program
	end if
	run
end open

on run
	try
		tell application program -- doesn't launch app
			if it is running then
				quit
			end if
		end tell
	on error
		--try a 2nd approach 
		set env to "/bin/bash;"
		set ps to "ps x |"
		set grep to "grep -i " & program & " |"
		set grepOmit to "grep -v \"grep\" |"
		set awk to "awk '{ print $1 }' |"
		set xargs to "xargs kill -9"
		set ignoreErrors to ">/dev/null 2>&1 &"
		set cmd to env & space & ps & space & grep & space & grepOmit & space & awk & space & xargs & space & ignoreErrors
		do shell script cmd
	end try
end run
