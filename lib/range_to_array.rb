# array = (1..100).to_a
array = [*1..100]
p array

array.each { |n| p n }