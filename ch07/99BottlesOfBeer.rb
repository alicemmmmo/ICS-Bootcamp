bottles =99
while bottles != 0 
		puts bottles.to_s + ' bottles of beer on the wall, ' +bottles.to_s + ' bottles of beer.' 
		bottles -= 1
		puts 'Take one down and pass it around, ' +bottles.to_s+ ' bottles of beer on the wall.'
		puts ' '
	while bottles == 1
		puts bottles.to_s + ' bottles of beer on the wall, ' +bottles.to_s + ' bottles of beer.' 
		puts 'Take one down and pass it around, no more bottles of beer on the wall.'
		puts ' '
		bottles -= 1
	end
end
puts 'No more bottles of beer on the wall, no more bottles of beer. 
Go to the store and buy some more, 99 bottles of beer on the wall.'