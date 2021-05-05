#!/usr/bin/ruby2.1

##
# @file      jsonStuff.rb
# @author    Mitch Richling <https://www.mitchr.me/>
# @Copyright Copyright 2016 by Mitch Richling.  All rights reserved.
# @brief     How to parse and generate JSON data.@EOL
# @Keywords  
# @Std       Ruby 2.1

require 'json'

puts("="*80)
puts(JSON.parse('{"hello": "world!"}').inspect)

puts("="*80)
puts(JSON.parse(File.read('t1.json')).inspect)

puts("="*80)
myHash = { :foo => "bar", "bam" => "BOOM" }
puts(JSON.generate(myHash))

puts("="*80)
myArray = [ 0, 1, 2, 3, 4, 5 ]
puts(JSON.generate(myArray))
