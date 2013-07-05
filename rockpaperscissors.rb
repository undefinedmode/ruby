# Simple rock paper scissors in Ruby	2013-07-05
$npc = ["ROCK", "PAPER", "SCISSORS"]
def win
	puts "You win. Victory dance!"
	play
end
def lose
	puts "You lose, try again"
	play
end
def play
	puts "Rock, paper, scissors: "
	player = gets.chomp.capitalize!
	$npc.shuffle!
	puts "NPC chose "+$npc[0]
		if $npc[0] == "SCISSORS" && player.chars.first == "R" #&& 
			win
		elsif	player.chars.first == "S" && $npc[0] == "PAPER"
			win
		elsif	player.chars.first == "P" && $npc[0] == "ROCK"
			win
		elsif player.chars.first == $npc[0].chars.first
			puts "Draw, let's play again"
			play
		else
			lose
		end
	end
play
