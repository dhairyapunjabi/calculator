puts"This is a calculator"
puts "Enter the operation u wish to do-\n1.Add\n2.Subtract\n3.Multiply\n4.Divide"
option=gets.chomp
case option
  when "Add"
    numbers=Array.new
    puts"Enter the numbers u wish to add till u wish and after entering all numbers press ="
    while true
      num=gets.chomp
      break if num=="="
      numbers.push(num.to_f)
    end
    y=0.0;
    numbers.each{|number| y+=number}
    puts "The answer is #{y}."
  when "Subtract"
    puts"Enter the minuend"
    minuend=gets.chomp
    puts"Enter the subtrahend"
    subtrahend=gets.chomp
    puts"The difference is #{minuend.to_f-subtrahend.to_f}."
  when "Divide"
    puts "Enter the dividend"
    dividend=gets.chomp
    puts "Enter the divisor"
    divisor=gets.chomp
    puts "The result is #{dividend.to_f/divisor.to_f}."
  when "Multiply"
    numbers=Array.new
    puts"Enter the numbers u wish to multiply till u wish and after entering all numbers press ="
     while true
       num=gets.chomp
       break if num=="="
       numbers.push(num.to_f)
     end
     y=1.0;
     numbers.each{|number| y*=number}
     puts "The answer is #{y}."
  else
    puts"This command is not supported."
end

