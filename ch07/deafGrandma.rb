command = gets.chomp
while command != 'BYE'
  if command != command.upcase
  	puts 'HUH?!  SPEAK UP, SONNY!'
  end
  if command == command.upcase
  	year= (rand(21)) +1930
  	puts 'NO, NOT SINCE ' +year.to_s+ '!'
  end
  command = gets.chomp
end
puts 'STAY LONGER TO TALK NEXT TIME!'