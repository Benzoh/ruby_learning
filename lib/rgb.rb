def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  # r = hex[1..2]
  # g = hex[3..4]
  # b = hex[5..6]
  # [r, g, b].map do |s|
  #   s.hex
  # end

  # \w 単語構成文字 [a-zA-Z0-9_]
  hex.scan(/\w\w/).map(&:hex)
end