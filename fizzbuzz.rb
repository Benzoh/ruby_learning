def fizzbuzz(count)
    if (count % 3 == 0) && (count % 5 == 0)
        return "FizzBuzz"
    elsif (count % 3) == 0
        return "Fizz"
    elsif count % 5 == 0
        return "Buzz"
    else
        return count.to_s
    end
end

(1...100).each do |i|
    p fizzbuzz(i)
end