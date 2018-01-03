line_width = 40
str = 'Table of Contents'
one ='Chapter 1: Numbers'
two ='Chapter 2: Letters'
three = 'Chapter 3: Variables'
onepg = 'page 1'
twopg = 'page 72'
threepg = 'page 118'

puts str.center (line_width)
puts one.ljust(line_width/2) + onepg.rjust(line_width/2)
puts two.ljust(line_width/2) + twopg.rjust(line_width/2)
puts three.ljust(line_width/2) + threepg.rjust(line_width/2)