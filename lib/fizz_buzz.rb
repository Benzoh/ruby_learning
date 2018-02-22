def fizz_buzz(count)
  if count % 15 == 0
    "Fizz Buzz"
  elsif count % 3 == 0
    "Fizz"
  elsif count % 5 == 0
    "Buzz"
  else
    count.to_s
  end
end

# (1...100).each do |i |
#   p fizzbuzz(i)
# end


