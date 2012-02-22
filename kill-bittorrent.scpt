(* Jason Campipsi
   name: kill-bittorrent
   version: v0.1.2
   date: 12.4.11
   Realsed under the GPL 3
   Purpose: version 7.2.2 Mac build of bittorrent does not always close, and sort of hangs infinitely instead of shutting off when you tell it. So this program is meant to kill the zombie program
*)

on run
	try
		do shell script "/bin/bash; ps x | grep -i bittorrent | grep -v \"+\" |awk '{ print $1 }' |xargs kill -9 2>/dev/null && 1>/dev/null"
	on error StrError
		display dialog "BitTorrent was not running." with title "KillBittorrent..."
	end try
end run