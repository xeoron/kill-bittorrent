(* Jason Campisi
   name: kill-bittorrent
   version: v0.1.2
   date: 12.4.11
   Released under the GPL 3
   Purpose: Mac build of bittorrent does not always close, and sort of hangs infinitely instead of shutting off when you tell it. 
   So this program is meant to kill the zombie program.
*)
property program : "bittorrent" --search for this keyword and tell the program to shutdown now!
on run
	set env to "/bin/bash;"
	set ps to "ps x |"
	set grep to "grep -i " & program & " |"
	set grepOmit to "grep -v \"grep\" |"
	set awk to "awk '{ print $1 }' |"
	set xargs to "xargs kill -9"
	set ignoreErrors to ">/dev/null"
	set cmd to env & space & ps & space & grep & space & grepOmit & space & awk & space & xargs & space & ignoreErrors
	try
		do shell script cmd
	on error StrError
		return display dialog "Something is not right Error." with title "KillBittorrent..."
	end try
end run
