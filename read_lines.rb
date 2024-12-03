lines = []
File.open('2_2.txt', 'r') do |f|
  f.each_line do |line|
    lines.push line.split.map(&:to_i)
  end
end

print lines # 2-d list of ints