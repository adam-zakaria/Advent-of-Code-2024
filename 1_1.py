import utils.utils as utils
from functools import reduce

########################################################
# read in input, parse into two lists
########################################################
x1 = []
x2 = []
with open('1.txt', 'r') as f:
  for line in f:
    line = line.strip() # remove new line
    x1.append(int(line.split(' ')[0]))
    x2.append(int(line.split(' ')[-1])) # there can be multiple spaces separating the numbers

########################################################
# calculate distance
########################################################
# print(sum([abs(y[0] - y[1]) for y in zip(sorted(x1), sorted(x2))]))
# answer: 2285373


#