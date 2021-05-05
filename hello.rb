#!/usr/local/bin/ruby

##
# @file      hello.rb
# @author    Mitch Richling <https://www.mitchr.me/>
# @Copyright Copyright 2006 by Mitch Richling.  All rights reserved.
# @brief     The classic hello world program the Ruby way.@EOL
# @Keywords  ruby example hello world
# @Std       Ruby 1.8
#
#            The methods puts, print, printf & putc are all in the IO
#            class as well so that they can be used to write to
#            different IO streams.  As used here, they write to
#            STDOUT.

puts("Hello, World!")

print("Hello, World!\n")

printf("Hello, World!\n")

STDOUT << "Hello, World!\n"

STDOUT.write("Hello, World!\n")

"Hello, World!\n".each_byte {|b| putc(b) }
