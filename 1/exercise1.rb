#!/usr/bin/env ruby

line = File.readlines("input.in").map {|x| x.chomp}[0]

floor = 0
line.split('').each do |e| 
  floor = floor + 1 if e == "("
  floor = floor - 1 if e == ")"
end

puts floor
