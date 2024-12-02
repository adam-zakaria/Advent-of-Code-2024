import utils.utils as utils
from functools import reduce

########################################################
# read in input, parse into two lists
########################################################
x1 = []
x2 = []
with open('1_2.txt', 'r') as f:
  for line in f:
    line = line.strip() # remove new line
    x1.append(int(line.split(' ')[0]))
    x2.append(int(line.split(' ')[-1])) # there can be multiple spaces separating the numbers

########################################################
# calculate similarity
########################################################
"""
There are two lists
For each number in the first list, get the number of times it appears in the second list. 

The frequency times the number is a contribution. 
Add all contributions, that is the answer.
"""

# filter leaves only the elements of some condition
# map(filter(lambda y1: y1 == y, x2), x1)

#print(x1)
map(lambda y1: print(y1), x1)

"""
How to the frequency functionally?
Maybe there's a count in functools?

[1,2,3,4,4,4,5]
[1,1,3,4,4,6,3]

1*2 + 2*0 + 3*2 + 4*2 + 5*0
"""