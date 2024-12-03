input = ''
File.open('3_1.txt', 'r') do |f|
  input = f.read
end
matches = input.scan(/mul\((\d{1,3}),(\d{1,3})\)/)
sum = 0
sum = matches.map { |x1, x2| x1.to_i * x2.to_i }.sum
print sum # 183669043