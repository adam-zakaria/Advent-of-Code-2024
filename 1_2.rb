########################################################
# read in input, parse into two lists
########################################################
x1 = []
x2 = []

File.open('1_2.txt', 'r') do |f|
  f.each_line do |line|
    line = line.strip # remove new line
    parts = line.split(' ')
    x1.push parts[0].to_i
    x2.push parts[-1].to_i # there can be multiple spaces separating the numbers
  end
end

########################################################
# Get contribution of each number
########################################################
print x1.map{ |x| x2.count(x)*x }.sum
