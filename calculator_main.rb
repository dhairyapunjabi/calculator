require_relative "calculator"
obj=Numbers.new
puts "Which operation do u wish to perform-\n+\n-\n*\n/"
operation=gets.chomp
case operation
when "+" then obj.add
when "-" then obj.sub
when "*" then obj.mult
when "/" then obj.div
else puts "Unknown operation"
end
