#!/usr/local/bin/ruby

##
# @file      funcArgDefault.rb
# @author    Mitch Richling <https://www.mitchr.me/>
# @Copyright Copyright 2006 by Mitch Richling.  All rights reserved.
# @brief     Default arguments for Ruby functions.@EOL
# @Keywords  ruby example functions
# @Std       Ruby 1.8

# Function arguments can have defaults
def printArg(arg1='hello')
  puts(arg1)
end

printArg
printArg()
printArg('dude')
printArg 'dude'
