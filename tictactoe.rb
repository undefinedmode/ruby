# Tic-Tac-Toe in Ruby
$array = ["0","1","2","3","4","5","6","7","8"]

def printboard
puts ""
print $array[0..2]
puts ""
print $array[3..5]
puts ""
print $array[6..8]
puts "\n \n"
end

def turnx
puts "Enter location for X: "
bla = gets.chomp.to_i
if $array[bla] != "X" && $array[bla] != "-"
	$array[bla] = "X"
	else
	puts "Location unavailable. Try again"
	turnx
	end
gamelogic
printboard
turnmin
end

def turnmin
puts "Enter location for -: "
bla = gets.chomp.to_i
if bla < 9 && bla > -1 && $array[bla] != "X" && $array[bla] != "-"
	$array[Integer(bla)] = "-"
	else
	puts "Location unavailable. Try again"
	turnmin
	end
gamelogic
printboard
turnx
end

def gameover
	puts "Win. Game Over"
	printboard
	exit
end

def gamelogic
if $array[0] == $array[1] && $array[1] == $array[2]
	gameover
elsif $array[3] == $array[4] && $array[4] == $array[5]
	gameover
elsif $array[6] == $array[7] && $array[7] == $array[8]
	gameover
#vertical
elsif $array[0] == $array[3] && $array[3] == $array[6]
	gameover
elsif $array[1] == $array[4] && $array[4] == $array[7]
	gameover
elsif $array[2] == $array[5] && $array[5] == $array[8]
	gameover
#diagonal
elsif $array[0] == $array[4] && $array[4] == $array[8]
	gameover
elsif $array[2] == $array[4] && $array[4] == $array[6]
	gameover
end
end
# Game start
puts "# Tic-Tac-Toe"
puts "# Player 1 = X"
puts "# Player 2 = -"
printboard
turnx
puts "Draw"
exit
