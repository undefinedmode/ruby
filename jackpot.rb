$array = ["a","s","d"]
def play
	puts " "
	puts "Pulling lever"
	$array[0] = 1 + rand(7)
	$array[1] = 1 + rand(7)
	$array[2] = 1 + rand(7)
	print $array[0..2]
	puts ""
	if $array[0] == $array[1] && $array[1] == $array[2]
			puts "Jackpot"
		else
			puts "The house always wins"
			puts "Try again? Y/N?"
			again = gets.chomp.capitalize
			if again == "Y"
				play
			else
				exit	
		end
	end
end
play
