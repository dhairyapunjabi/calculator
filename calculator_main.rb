require_relative "calculator"
calculator=Calculator.new
puts "Which operation do u wish to perform-\n+\n-\n*\n/"
operation=gets.chomp
case operation
when "+" then calculator.add
when "-" then calculator.sub
when "*" then calculator.mult
when "/" then calculator.div
else puts "Unknown operation"
end
