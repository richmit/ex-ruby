#!/usr/local/bin/ruby

##
# @file      termSize.rb
# @author    Mitch Richling <https://www.mitchr.me/>
# @Copyright Copyright 2008 by Mitch Richling.  All rights reserved.
# @brief     Query the terminal size via IO console.@EOL
# @Keywords  ioctl terminal size IO console
# @Std       Ruby2.0
#
#            

require 'io/console'

rows, cols = IO.console.winsize

puts("ROWS: #{rows}")
puts("COLS: #{cols}")
