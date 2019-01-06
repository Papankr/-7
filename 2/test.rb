#!/usr/bin/env ruby

require 'test/unit'
require '/Users/tenzy/Desktop/lab7/main2'

# Test for part2
class Test2 < Test::Unit::TestCase
  def setup
    @box = Box.new(10, 10, 10)
  end

  def test_1
    assert @box.is_a? Board
  end

  def test_2
    assert_equal(1000, @box.volume)
  end

  def test_3
    assert_equal(100, @box.surface)
  end
end
