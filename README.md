Kill-bittorent
=====
Purpose: a simple app that will kill the offical BitTorrent program when it 
refuses to quit or is not closing fast enough.

Target Other Programs:
=====
Modify to make a kill switch for any program you like. Simple change 'bittorrent' 
to different process name within this line of code:
  property program : "bittorrent"

  to
  property program : "utorrent"
  or
  property program : "firefox"
  or
  property program : "google chrome"
  or
  property program : "itunes"
  or
  property program : "plex"
  or
  property program : "wine"
  etc

Requirements: 
=====
Mac OS X and AppleScript Editor to compile.

