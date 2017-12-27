words = []
last = words.length-1

while words[last] != '' 
	any_word =gets.chomp
	words.push(any_word)
end
words.pop['']
sorted = words.sort!
puts sorted.inspect