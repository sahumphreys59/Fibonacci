class Fib_sequence
	def recursive_fib(n)
		if n < 2
			n
		else
			recursive_fib(n - 1) + recursive_fib(n - 2)
		end
	end

	def iterative_fib(num)
		fib_numbers = [0, 1]
		(1..num).each do |n|
			if n < 2
				fib_numbers[n] = n
			else
				fib_numbers[n] = fib_numbers[n - 1] + fib_numbers[n - 2]
				n += 1
			end
		end
		fib_numbers.last
	end	
end	

f = Fib_sequence.new

num = 35
puts f.recursive_fib(num)
puts f.iterative_fib(num)