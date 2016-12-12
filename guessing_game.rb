guesses = []
total_guesses = 0
answer = rand(1..100).to_i

def just_right(guess, answer)
  guess == answer
end

def too_high(guess, answer)
  guess > answer
end

def too_low(guess, answer)
  guess < answer
end

def repeat(guess, guesses)
  guesses.include?(guess)
end

def listening(guess, guesses, answer)
  (guesses[-2].to_i > answer && guess > guesses[-2].to_i) || (guesses[-2].to_i < answer && guess < guesses[-2].to_i)
end

puts 'Please guess a number.'

while guesses.last != answer && total_guesses < 5 do
  new_guess = gets.chomp.to_i
  guesses << new_guess
  total_guesses += 1
  if repeat(new_guess, guesses[0,total_guesses - 1])
    puts ['Are you feeling okay? You already guessed that...','Come on, man'].sample
  elsif listening(new_guess, guesses, answer)
    puts ['Are you listening to me? I tried to give you a hint...','What was unclear about the hint I gave you?','Perhaps I was not clear enough.'].sample
  elsif too_high(new_guess, answer)
    puts 'Too high'
  elsif too_low(new_guess, answer)
    puts 'Too low'
  end
end

if just_right(new_guess, answer)
  puts "Great guess, you nailed it! You only needed #{total_guesses} guesses."
end

if total_guesses == 5 && guesses.last != answer
  puts "You've exceeded your allotment of guesses. The answer was #{answer}. Better luck next time."
end
