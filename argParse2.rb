#!/usr/local/bin/ruby
# -*- Mode:Ruby; Coding:utf-8; fill-column:132 -*-

####################################################################################################################################
# @file      argParse2.rb
# @author    Mitch Richling <https://www.mitchr.me>
# @Copyright Copyright 2013 by Mitch Richling.  All rights reserved.
# @brief     Command line arguments.@EOL
# @Keywords  
# @Std       Ruby 1.8
#            

##----------------------------------------------------------------------------------------------------------------------------------
require 'optparse'
require 'optparse/time'

##----------------------------------------------------------------------------------------------------------------------------------
debug = 0
opts = OptionParser.new do |opts|
  opts.banner = "Usage: argParse2.rb [options]"
  opts.separator ""
  opts.separator "Options:"
  opts.on("-h",        "--help",             "Show this message")             { puts opts; exit                                }
  opts.on("-d INT",    "--debug INT",        "Set debug level")               { |v| debug=v.to_i;                              }
  opts.separator ""
  opts.separator "This is some useful info about what this program will do."
  opts.separator "Neat!."
end
opts.parse!(ARGV)

##----------------------------------------------------------------------------------------------------------------------------------
puts("HELLO!!")
if(debug>0) then
  puts("Debug was turned on (#{debug})!")
end
puts("BYE!!")
