def to_hex(a, b, c)
  [a, b, c].inject('#') do |result, a|
    p result
    result += a.to_s(16)
  end
end

def to_ints(hex)
  num = hex.delete '#'
  num 

end

p to_hex(100, 122, 222)