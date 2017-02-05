#!/usr/bin/ruby
#
require 'bwt'

string="Foobar"
puts "string - #{string}"

foo=Bwt.bwt(string)
puts "bwt - string - #{foo}"

bar=Bwt.bwt_rev(foo)
puts "bwt-reverse - #{bar}"

