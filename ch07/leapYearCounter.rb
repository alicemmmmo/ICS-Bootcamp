puts 'I can tell you all the leap years between two years. What year do you want to start on?'
start_year = gets.chomp
puts 'Okay, what year do you want to end on?'
end_year = gets.chomp
first, last = start_year.to_i, end_year.to_i

range = (first .. last).to_a
for years in range 
	if years%4 == 0 and years%100 != 0
		puts years
	elsif years%400 == 0
		puts years
	end
end 
