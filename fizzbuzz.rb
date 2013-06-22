####################################
# Players take turns to count incrementally, replacing any number divisible by three with the word "fizz", and any number divisible by five with the word "buzz".
####################################
for i in 1..20
if i % 5 == 0 && i % 3 == 0
	puts "fizzbuzz "
	i+=1
elsif i % 5 == 0
	puts "buzz "
	i+=1
elsif i % 3 == 0
	puts "fizz "
	i+=1
else
	puts i
	i+=1
end
end
