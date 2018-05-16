puts "Input operation to perform"
puts "+"
puts "-"
puts "/"
puts "*"
puts "\n"
op=gets.chomp
case op
	when "+"
	puts "Input numbers to be added then = to add"
	s=0
	while true
		x=gets.chomp
		break if x=="=" 
		x=x.to_i
 		s+=x
 		end
  puts "sum is #{s}"
	when "-"
		puts "Input numbers"
		a=gets.chomp.to_i
		b=gets.chomp.to_i
		puts a-b
	when "/"
		puts "Input numbers"
		a=gets.chomp.to_f
    b=gets.chomp.to_f
    puts a/b
  when "*"
    puts "Input numbers to be amultiplied then = to get product"
	s=1
	while true
		x=gets.chomp
		break if x=="=" 
		x=x.to_i
 		s*=x
 		end
  puts "product is #{s}"
	else
		puts "Invalid input"
	end
