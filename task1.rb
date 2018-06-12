string = ARGV[0]

# if !string
	# exit
# end

# if string.length > 10000
	# exit
# end	

if string.length === 1 || string.length === 0
	puts "YES"
	exit
end

string = string.gsub(/\s+/, '')
string.downcase!

reverseString = ""

index = string.length
until index == 0 do
    reverseString << string[index - 1]
    index -= 1
end

if string === reverseString
	puts "YES"
	exit
end

puts "NO"



