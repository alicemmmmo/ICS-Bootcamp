title = ['Table of Contents']
chapter_names = ['Chapter 1: Numbers', 'Chapter 2: Letters', 'Chapter 3: Variables']
page_numbers = ['page 1', 'page 72', 'page 118']

line_width= 40
puts (title[0].center(line_width))

x, y= 0, 0
while x<3 and y<3
	left = chapter_names[x].ljust(line_width/2)
	right = page_numbers[y].rjust(line_width/2)
	puts left + right
	x+=1
	y+=1
end