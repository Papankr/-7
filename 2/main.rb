#!/usr/bin/env ruby

# Board Class
class Board
  attr_accessor :width, :length

  def initialize(width, length)
    @width = width
    @length = length
  end

  def surface
    @width * @length
  end
end

# Box class
class Box < Board
  attr_accessor :height

  def initialize(width, length, height)
    super(width, length)
    @height = height
  end

  def volume
    surface * @height
  end
end

box = Box.new(10, 5, 5)

puts "box width=  #{ box.width}"
puts "box length=  #{ box.length}"
puts "box hieght=  #{ box.height}"
puts "box volume=  #{ box.volume}"
