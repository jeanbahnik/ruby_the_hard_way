print "Give me a number: "
number = $stdin.gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = $stdin.gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Please give me a number: "
puts "Here is 10% back: #{($stdin.gets.chomp.to_f)/10}"
