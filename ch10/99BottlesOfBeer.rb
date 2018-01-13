def english_Number num
  number =num.to_i
  if number < 0  
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''  
  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left  = number
      
  write = left/1000000000000
  left  = left - write*1000000000000
  if write > 0
    hundreds  = english_Number write
    numString = numString + hundreds + ' trillion'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/1000000000
  left  = left - write*1000000000
  if write > 0
    hundreds  = english_Number write
    numString = numString + hundreds + ' billion'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/1000000
  left  = left - write*1000000
  if write > 0
    hundreds  = english_Number write
    numString = numString + hundreds + ' million'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/1000
  left  = left - write*1000
  if write > 0
    hundreds  = english_Number write
    numString = numString + hundreds + ' thousand'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/100
  left  = left - write*100 
  if write > 0
    hundreds  = english_Number write
    numString = numString + hundreds + ' hundred'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/10 
  left  = left - write*10  
  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left  = 0
  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

bottles = (gets.chomp).to_i
while bottles != 0 
	puts english_Number(bottles).to_s + ' bottles of beer on the wall, ' + english_Number(bottles).to_s + ' bottles of beer.' 
	bottles -= 1
	puts 'Take one down and pass it around, ' +english_Number(bottles).to_s+ ' bottles of beer on the wall.'
	puts ' '
	if bottles == 2
		puts english_Number(bottles).to_s + ' bottle of beer on the wall, ' +english_Number(bottles).to_s + ' bottle of beer.' 
		puts 'Take one down and pass it around, 1 bottle of beer on the wall.'
		puts ' '
		bottles -= 1
		end
	if bottles == 1
		puts english_Number(bottles).to_s + ' bottle of beer on the wall, ' +english_Number(bottles).to_s + ' bottle of beer.' 
		puts 'Take one down and pass it around, no more bottles of beer on the wall.'
		puts ' '
		bottles -= 1
		end
end
puts 'No more bottles of beer on the wall, no more bottles of beer. 
Go to the store and buy some more, 99 bottles of beer on the wall.'
