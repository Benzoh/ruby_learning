# def greeting(names)
def greeting(*names)
  p "#{names.join(', ')} Hello!"
end

names = [
  'Bob',
  'Mari',
  'Billy',
  'Hiramasa'
]

# greeting names
greeting 'Mikuri'

p "----------------------------------------------------------------------"

a = [1, 2, 3]
p a
p [a]
p [*a]

p [-1, 0, a, 1, 2, 3]
p [-1, 0, *a, 1, 2, 3]
p [-1, 0] + a + [1, 2, 3]

p "----------------------------------------------------------------------"

p [1, 2, 3] == [1, 2, 3]
p [1, 2, 3] == [1, 2, 4]

p "----------------------------------------------------------------------"

p %w! apple melon lemon!
p %w(apple melon lemon)

p "----------------------------------------------------------------------"

p a = Array.new
p a = Array.new(5)
p a = Array.new(5, 0)
p a = Array.new(10) { |n| n % 3 + 1 }

p "----------------------------------------------------------------------"

p string = 'Ybox'
string[0] = 'X'
p string
p string << '360'

p "----------------------------------------------------------------------"

a.each_with_index do |n, i|
  p "[#{i}]#{n}"
end

p "---"

a.each.with_index(10) do |n, i|
  p "[#{i}]#{n}"
end

p "----------------------------------------------------------------------"

dimensions = [
  [10, 20],
  [20, 40],
  [40, 80],
]
areas = []
dimensions.each do |length, width|
  areas << length * width
end
p areas

dimensions = [
  [10, 20],
  [20, 40],
  [40, 80],
]
areas = []
dimensions.each_with_index do |length, width, i|
  areas << length * width
end
p areas

dimensions = [
  [10, 20],
  [20, 40],
  [40, 80],
]
areas = []
dimensions.each_with_index do |(length, width), i|
  areas[i] = length * width
end
p areas

p "----------------------------------------------------------------------"

names = ['Tanaka', 'Suzuki', 'Mori']
san_name = names.map do |name|
  "#{name}-san"
end.join(' and ')
p san_name

p "----------------------------------------------------------------------"

sum = 0
5.times {
  sum += 1
  p sum
}

a = []
10.upto(14) { |n| a << n }
p a

a = []
14.downto(10) { |n| a << n }
p a

a = []
1.step(10, 2) { |n| a << n }
p a

a = []
10.step(1, -2) { |n| a << n }
p a

p "----------------------------------------------------------------------"

a = []
while a.size < 5
  a << 1
end
p a

a = []
a << 1 while a.size < 5
p a

# どんな条件でも1回は実行したいとき、begin ... endで囲んで while
a = []
while false
  a << 1
end
p a

begin
  a << 1
end while false
p a

p "----------------------------------------------------------------------"

numbers = [1, 2, 3, 4, 5].shuffle
numbers.each do |n|
  puts n
  break if n == 5
end

# ネストしている場合、一番内側の繰り返所処理を抜ける
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
fruits.each do |fruit|
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    break if n == 3
  end
end

p "----------------------------------------------------------------------"

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
ret = catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        throw :done, "Match!!"
      end
    end
  end
end
p ret

p "----------------------------------------------------------------------"

foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
  print "#{food}は好きですか？ => "
  answer = 'いいえ'
  # answer = ['はい', 'いいえ'].sample
  puts answer

  count += 1

  redo if answer != 'はい' && count < 2
  # redo unless answer != 'はい' && count < 2

  count = 0
end