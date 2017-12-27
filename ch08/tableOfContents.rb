title = ['Table of Contents']
chapter_names = ['Chapter 1: Numbers', 'Chapter 2: Letters', 'Chapter 3: Variables']
page_numbers = ['page 1', 'page 72', 'page 118']

lineWidth= 40
puts the_title.center lineWidth

x, y= 0, 0
puts chapter_names[x].ljust(lineWidth/2) + page_numbers[y].rjust(lineWidth/2)
while x<2 and y<2
	puts chapter_names[x+=1].ljust(lineWidth/2) + page_numbers[y+=1].rjust(lineWidth/2)
end