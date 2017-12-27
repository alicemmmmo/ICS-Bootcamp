puts 'I can tell you all the leap years between two years. What year do you want to start on?'
start_year = gets.chomp
puts 'Okay, what year do you want to end on?'
end_year = gets.chomp
range = (start_year.to_i .. end_year.to_i).to_a
for years in range 
	if years.to_i/4 == years.to_f/4.0 and years.to_i/100 != years.to_f/100.0
		leap = ().to_a
		leap.push(years.to_i)
		puts leap
end
end 
