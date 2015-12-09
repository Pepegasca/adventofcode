#!/usr/bin/env ruby

lines = File.readlines("input.in").map {|x| x.chomp}

areas = lines.map do |line|
  sides = line.split("x").map{|i| i.to_i}
  area_sides = sides.combination(2).map{|a| a.inject(:*)}
  area_sides.map{|e| 2*e }.inject(:+) + area_sides.min
end

p areas.inject(:+)


