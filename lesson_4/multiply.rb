#This will mutate the original argument
def multiply(numbers, criterion)
	counter = 0
	loop do 
		break if counter == numbers.size
		numbers[counter] = numbers[counter] * criterion
		counter += 1
	end
	numbers		
end