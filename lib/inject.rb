# numbers = [1, 2, 3, 4]
# sum = 0
# numbers.each { |n| sum += n }
# p sum

numbers = [1, 2, 3, 4]
sum = numbers.inject(0) do |result, n|
  p result
  result + n
end
p sum
