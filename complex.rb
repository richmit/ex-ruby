#!/usr/local/bin/ruby
# -*- Mode:Ruby; Coding:utf-8; fill-column:132 -*-

####################################################################################################################################
# @file      complex.rb
# @author    Mitch Richling <https://www.mitchr.me>
# @Copyright Copyright 2006 by Mitch Richling.  All rights reserved.
# @brief     Complex numbers in ruby.@EOL
# @Keywords  ruby example complex numbers
# @Std       Ruby 1.8
#            

##----------------------------------------------------------------------------------------------------------------------------------


require 'cmath'  # Only needed for things like sqrt....

a = Complex(1)          # or 1.to_c
b = Complex(1,1)      
c = Complex('1+2i')     # or '1+2i'.to_c
d = 3 + Complex::I * 4
e = Complex.polar(3, Math::PI)

puts(a)
puts(b)
puts(c)
puts(d)

puts(b*c)
puts(b+c)
puts(b/c)
puts(b.fdiv(c)) # Floating (not rational) division
puts(b**2)

puts(b**(1/2))
puts(Math::sqrt(b))

puts(b.abs)   # or .magnitude
puts(b.abs2)  # abs squared
puts(b.arg)   # or .phase or .angle
puts(b.conj)  # or .conjugate

puts(b.real)
puts(b.imag)  # or .imaginary

puts(b.polar.inspect)
puts(b.rectangular.inspect)


