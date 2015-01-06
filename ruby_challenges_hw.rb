# var celcius = Math.round((fahrenheit - 32) / 1.8);


# Challenge 1 - Temperature Converter ------------------------------
def challenge1	
	puts "Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius"
	c_or_f = gets.chomp.to_i

	if c_or_f == 1
		puts "Enter Celsius Temperature:"
		c_to_f = gets.chomp.to_i
		def fahrenheit(temp)
			return (temp * 1.80) + 32
		end
		puts "#{c_to_f}°C is equal to #{fahrenheit(c_to_f).round}°F"
	elsif c_or_f == 2
		puts "Enter Fahrenheit Temperature:"
		f_to_c = gets.chomp.to_i
		def celcius(temp)
			return (temp - 32) / 1.8
		end
		puts "#{f_to_c}°F is equal to #{celcius(f_to_c).round}°C"
	else
		puts "Please enter a number 1 or 2"
	end
end


# Challenge 2 - Calculator -----------------------------------------
def challenge2	
	puts "What calculation would you like to do? (add, sub, mult, div)"
	method = gets.chomp.to_s
	puts "-" * 18
	puts "What is number 1?"
	num1 = gets.chomp.to_f
	puts "-" * 18
	puts "What is number 2?"
	num2 = gets.chomp.to_f
	puts "-" * 18

	if method == "add"
		add_total = num1 + num2
		puts "The solution is: #{num1} + #{num2} = #{add_total}"
	elsif method == "sub"
		sub_total = num1 - num2
		puts "The solution is: #{num1} - #{num2} = #{sub_total}"
	elsif method == "mult"
		mult_total = num1 * num2
		puts "The solution is: #{num1} * #{num2} = #{mult_total}"
	elsif method == "div"
		div_total = num1 / num2
		puts "The solution is: #{num1.round} / #{num2.round} = #{div_total}"
	else
		puts "Please only use one of the following four methods: add, sub, mult, div"
	end
end

# Challenge 3 - Reverse a string -----------------------------------
def challenge3	
	puts "Enter a string:"
	# arr = gets.chomp.split("")
	# len = arr.length-1
	# new_arr = []

	# for i in 0..len
	# 	new_arr.push(arr[len-i])
	# end
	# puts "#{new_arr.join}"

	word = gets.chomp.split("")
	reverse_word = []

	word.each do |letters|
		reverse_word.unshift(letters)
	end

	puts "Your reversed word is: #{reverse_word.join.to_s}"


end

# Challenge 4 - Bank Transactions ----------------------------------
def challenge4 	
	$balance = 4000
	puts "Your current balance is"
	puts "#{balance}"
	choice = "yes"

	while choice == "yes" do
		puts "What would you like to do? (deposit, withdraw, check_balance)"
		method = gets.chomp.to_s
		if method == "deposit"
			puts "How much would you like to deposit?"
			amount = gets.chomp.to_i
			total = balance + amount
			puts "Your new balance is #{total}"
			puts "Would you like to continue banking? (yes/no)"
			choice = gets.chomp
		elsif method == "withdraw"
			puts "How much would you like to withdraw?"
			amount = gets.chomp.to_i
			if amount > balance
				puts "Withdraw canceled. Amount requested is greater than current balance."
				puts "Would you like to continue banking? (yes/no)"
				amount = gets.chomp.to_i
			else
				total = balance - amount
				puts "Your new balance is #{total}"
				puts "Would you like to continue banking? (yes/no)"
				amount = gets.chomp.to_i
			end
		elsif method == "check_balance"
			puts "Your current balance is #{balance}"
			puts "Would you like to continue banking? (yes/no)"
			choice = gets.chomp
		else
			puts "Please select from one of the following: deposit, withdraw, check_balance"
		end
	end
end

# Challenge 5 - Guessing Game --------------------------------------
def challenge5 
	counter = 1
	number = rand(1..100)
	puts "Guess a number between 1 and 100"
	guess = gets.chomp.to_i

	while guess != number do
		if guess > 100 || guess < 0
			puts "Please guess a number between 1 and 100. Guess again"
			guess = gets.chomp.to_i
			counter +=1
		elsif guess < number
			puts "the number is greater than #{guess}. Guess again."
			guess = gets.chomp.to_i
			counter +=1
		elsif guess > number
			puts "the number is less than #{guess}. Guess again."
			guess = gets.chomp.to_i
			counter +=1
		end
	end
	puts "You got it in #{counter} attempt(s)!"
end

# Pick your poison -------------------------------------------------
puts "Pick your poison:"
puts "(1) Temp Converter"
puts "(2) Calculator"
puts "(3) Reverse String"
puts "(4) Banking"
puts "(5) Guessing"
game = gets.chomp.to_i
case game

when 1
	challenge1
when 2
	challenge2
when 3
	challenge3
when 4
	challenge4
when 5
	challenge5
else
    puts "Enter a number 1 - 5"
end

 

