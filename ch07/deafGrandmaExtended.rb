command1 = gets.chomp
list_commands = []
list_commands << command1

while command1 != 'BYE' 
   if command1 == command1.upcase  
    puts 'NO, NOT SINCE ' +((rand(21)) +1930).to_s+ '!'
    end
   if command1 != command1.upcase
    puts 'HUH?!  SPEAK UP, SONNY!'
    end
  command1 = gets.chomp
  list_commands << command1
end
puts 'YOU WANT SOME PIE?!'
command1 = gets.chomp
list_commands << command1

while list_commands[-2].to_s != 'BYE' or command1 != 'BYE'
  if command1 != command1.upcase
    puts 'HUH?!  SPEAK UP, SONNY!'
    end
  if command1 == command1.upcase && command1 != 'BYE'
    puts 'NO, NOT SINCE ' +((rand(21)) +1930).to_s+ '!'
    end
  if command1 == 'BYE'
    puts 'YOUR EYE?!'
  end
  command1 = gets.chomp
  list_commands << command1
end 

while list_commands[-3].to_s != 'BYE' or list_commands[-2].to_s != 'BYE' or command1 != 'BYE'
  if command1 != command1.upcase
    puts 'HUH?!  SPEAK UP, SONNY!'
    end
  if command1 == command1.upcase && command1 != 'BYE'
    puts 'NO, NOT SINCE ' +((rand(21)) +1930).to_s+ '!'
    end
  if command1 == 'BYE' && list_commands[-2].to_s != 'BYE'
    puts 'OH MY?!'
  end
  if command1 == 'BYE' && list_commands[-2].to_s == 'BYE'
    puts 'OH MY!'
  end
  command1 = gets.chomp
  list_commands << command1
end

puts 'KIDS THESE DAYS!!'