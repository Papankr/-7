#!/usr/bin/env ruby

require 'test/unit'
require 'minitest/autorun'
require './main.rb'

# Test for part1
class Test1 < Test::Unit::TestCase
  def test_1
    low = rand(-99..0)
    high = rand(100)

    file = File.open(SRC_FILE_PATH, 'w') do |f|
      f.puts(low)
      rand(10..100).times do
        f.puts rand(low..high)
      end

      f.puts(high)
    end

    nums = []
    File.open(SRC_FILE_PATH, 'r') do |f|
      while (line = f.gets)
        nums << line.to_f
      end
      min_c = nums.select { |n| n < 0 }.count
      exp = {

        'min_odd' => low,
        'minmax_diff' => high + low,
        'last_first' => high - low,
        'min_count' => min_c.to_f

      }
      if min_c > 10
        puts 'There are more than 10 negative numbers in array! = ' + min_c.to_s

      else puts 'Less than 10 negative numbers= ' + min_c.to_s

      end
      assert_equal(exp, get_results(SRC_FILE_PATH))
    end
  end
  def teardown
    remove_files
  end

  private

  SRC_FILE_PATH = "test.dot".freeze


    def remove_files
      File.delete SRC_FILE_PATH
    end



end
