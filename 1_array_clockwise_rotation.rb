# puts "Input array size"
# n = gets.chomp.to_i
# puts"Input array"
# arr =array= Array.new(n)
# for i in 0...n
#     arr[i] = gets.chomp
# end
# puts "Input N"
# N= gets.chomp.to_i
# array = arr[-N..(n-1)]+ arr[0..-(N+1)]
# puts array

puts ARGV[1..ARGV[0].to_i].rotate(-ARGV[ARGV[0].to_i+1].to_i)