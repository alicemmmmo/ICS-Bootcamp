def newroman number
  numleft  = number.to_i
  if numleft < 0  
    return 'Please enter a number that isn\'t negative.'
  end
  if numleft == 0
    return '0'
  end

  divide = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4]
  pos = 0
  set = [0]*12
  while pos < 12
    digit = divide[pos]
    if numleft >= digit
      set [pos] = numleft/digit
      numleft = numleft % digit
    end
    pos += 1
  end

  if numleft < 4
    one = numleft/1
    number = numleft%10
  end
 
  num_string = 'M'*set[0] + "CM"*set[1] + 'D'*set[2] + 'CD'*set[3] + 'C'*set[4] +
  'XC'*set[5] + 'L'*set[6] + 'XL'*set[7] + 'X'*set [8] + 'IX'*set[9] +
  'V'*set[10] + 'IV'*set[11] + 'I'*one
  puts num_string
end

puts newroman(gets.chomp)