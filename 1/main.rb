File.open('F.dot', 'w') do |f|
  rand(10..20).times do
    f.puts rand(-100.0..100.00)
  end
end

def get_results(filename)
  nums = []

  File.open(filename, 'r') do |f|
    while (line = f.gets)
      nums << line.to_f
    end
  end

  mn = nums.each.with_index.select { |_v, i| i.even? }.min
  minmax_diff = nums.min + nums.max
  last_first = nums.last - nums.first
  min_count = nums.select { |n| n < 0 }.count

  {
    'min_odd' => mn[0],
    'minmax_diff' => minmax_diff,
    'last_first' => last_first,
    'min_count' => min_count
  }
end

res = get_results('F.dot')
p res

puts "Min element with odd index: #{res['min_odd']}"

puts "Sum of minimal and maximal elements: #{res['minmax_diff']}"

puts "Difference of first and last elements: #{res['last_first']}"

puts 'There are more than 10 negative numbers in array!' if res['min_count'] > 10
