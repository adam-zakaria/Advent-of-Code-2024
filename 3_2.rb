input = ''
File.open('3_1.txt', 'r') do |f|
  input = f.read
end
# remove the streches from don't to the next do

#i = 0
#while i < input.length
#  if input[i]:input[i+4] == "don't"
#    j = i+5 
#    while j < input.length
#      if input[i]:input[i+1] == 'do' and input[j]:input[j+4] != "don't"

# Replace
# don't<any char any number of times>do 
# with '', removing it from the input
input.gsub!(/don't.*?do/, '')

# hmmmmm there are don't left over

print input



  # don't forget to inc on a default case?

matches = input.scan(/mul\((\d{1,3}),(\d{1,3})\)/)
sum = 0
sum = matches.map { |x1, x2| x1.to_i * x2.to_i }.sum
print sum # 183669043