# convert_length(1, 'm', 'in')

# ハッシュリテラル
{}

{}.class
#=> Hash

hash = {
  'japan' => 'yen',
  'us' => 'doller',
  'india' => 'rupee',
}
p hash

hash['italy'] = 'euro'
p hash

hash2 = {
  'italy' => 'euro',
  'us' => 'doller',
  'india' => 'rupee',
  'japan' => 'yen',
}
p hash == hash2

hash.delete('japan')
p hash

p hash.delete('uk') { |key| "NOT found: #{key}" }

# シンボルを使う
hash3 = {
  :japan => 'yen',
  :us => 'doller',
  :india => 'rupee',
}
p hash3

hash3 = {
  japan: 'yen',
  us: 'doller',
  india: 'rupee',
}
p hash3

hash4 = {
  japan: :yen,
  us: :doller,
  india: :rupee,
}
p hash4

p hash3[:japan]
p hash4[:japan]

p "----------------------------------------------------------------------"

# 長さの単位変換プログラムを作成する。
# convert_length.rb

p "----------------------------------------------------------------------"

# ハッシュの頁だが、気になったので
member = [ 'member', 'manager' ]
# p member.has_key?('member')
# p member.key?('member')
p member.include?('member')
p member.member?('member')

p "----------------------------------------------------------------------"

h = { us: 'doller', india: 'rupee' }
_h = { japan: 'yen', **h }
p _h

_h = { japan: 'yen' }.merge(h)
p _h

p "----------------------------------------------------------------------"

def buy_burger(menu, options = {})
  drink = options[:drink]
  potato = options[:potato]
  # 省略
end

buy_burger('cheese', drink: true, potato: true)


