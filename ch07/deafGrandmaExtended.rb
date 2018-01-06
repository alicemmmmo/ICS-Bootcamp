counter = 0

while counter < 3
  command = gets.chomp
  if command == 'BYE'
    counter += 1
    if counter == 3
      puts 'KIDS THESE DAYS!!'
    else 
      puts 'YOU WANT SOME PIE?!'
    end 
  elsif command != command.upcase
    puts 'HUH?!  SPEAK UP, SONNY!'
    counter = 0
  else 
    puts 'NO, NOT SINCE ' +((rand(21)) +1930).to_s+ '!'
    counter = 0
  end
end