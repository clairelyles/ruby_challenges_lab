# Challenge 5 - Guessing Game --------------------------------------
def guessing_game
	counter = 1
	number = rand(1..100)
	puts "Guess a number between 1 and 100"
	guess = rand(1..100)

	while guess != number do
		if guess < number
			puts "The number is greater than #{guess}. Guess again."
			guess = rand(50..100)
			counter +=1
		elsif guess > number
			puts "The number is less than #{guess}. Guess again."
			guess = rand(1..50)
			counter +=1
		end
	end
	puts "The number was: #{number}."
	puts "Congrats! You guessed #{guess}. You got it in #{counter} attempt(s)!"
end

guessing_game
