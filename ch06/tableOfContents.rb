lineWidth = 40
str = 'Table of Contents'
one ='Chapter 1: Numbers'
two ='Chapter 2: Letters'
three = 'Chapter 3: Variables'
onepg = 'page 1'
twopg = 'page 72'
threepg = 'page 118'

puts str.center lineWidth
puts one.ljust(lineWidth/2) + onepg.rjust(lineWidth/2)
puts two.ljust(lineWidth/2) + twopg.rjust(lineWidth/2)
puts three.ljust(lineWidth/2) + threepg.rjust(lineWidth/2)