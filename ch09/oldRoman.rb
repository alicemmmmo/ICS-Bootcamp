def oldroman number
  numleft  = number.to_i
  if numleft < 0  
    return 'Please enter a number that isn\'t negative.'
  end
  if numleft == 0
    return '0'
  end

  divide = [1000, 500, 100, 50, 10, 5] 
  pos = 0
  set = [0]*6
  while pos < 6
    digit = divide[pos]
    if numleft >= digit
      set [pos] = numleft/digit
      numleft = numleft % digit
    end
    pos += 1
  end

  if numleft < 5
    one = numleft/1
    number = numleft%10
  end
 
  num_string = 'M'*set[0] + 'D'*set[1] + 'C'*set[2] + 'L'*set[3] + 'X'*set[4] +
  'V'*set[5] + 'I'*one  
  puts num_string
end

puts oldroman(gets.chomp)