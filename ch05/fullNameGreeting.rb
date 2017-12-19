puts 'Hello, what\'s your name?'
first = gets.chomp
puts 'Hi, '+first+ ', what\'s your last name?'
last = gets.chomp
puts 'Okay, '+first+' '+last+ ', do you have a middle name?'
middle =gets.chomp
full= first + ' '+middle +' '+last
puts 'Nice to meet you, ' + full +'.'