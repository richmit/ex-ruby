#!/usr/local/bin/ruby

##
# @file      funcBlockArg01.rb
# @author    Mitch Richling <https://www.mitchr.me/>
# @Copyright Copyright 2006 by Mitch Richling.  All rights reserved.
# @brief     Block arguments for ruby functions.@EOL
# @Keywords  ruby example function block arguments
# @Std       Ruby 1.8

def blockFun1(arg1)
  if block_given?
    yield(arg1)
    "HAVE BLOCK"
  else
    "NO BLOCK"
  end
end

puts("Call with no block")
result = blockFun1('hello')
puts("  RESULT: #{result}")

puts("Call with block")
result = blockFun1('hello') {|x| puts("  IN BLOCK: #{x}")}
puts("  RESULT: #{result}")

puts("Call with block who ignores its argument")
result = blockFun1('hello') {puts("  IN BLOCK: DUNO ARG")}
puts("  RESULT: #{result}")
