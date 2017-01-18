def fib(num)
	sequence = []
	sequence[0] = 0
	sequence[1] = 1
	counter = 0
	
	num.times do |number|
		sequence.push(sequence[counter]+sequence[counter+1])
		counter = counter + 1
	end

	return sequence[0..num]
end


def fib_rec(num)
	if num == 0
		return [0]
	elsif num == 1
		return [0,1]
	else
		arr = fib_rec(num-1)
		arr << arr[-1] + arr[-2]
	end
end	
