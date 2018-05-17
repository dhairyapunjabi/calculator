class Numbers
  def initialize
   @array=Array.new
  end
  def add
    @out=0.0
    arrInput
    @array.each{|arr| @out+=arr.to_f}
    @array.clear
    display
  end
  def sub
    puts "Input the minuend"
    minuend=input
    puts "Input the subtrahend"
    subtrahend=input
    @out=minuend.to_f-subtrahend.to_f
    display
  end
  def mult
    @out=1.0
    arrInput
    @array.each{|arr| @out*=arr.to_f}
    @array.clear
    display
  end
  def div
    puts "Input the dividend"
    dividend=input
    puts "Input the divisor"
    divisor=input
    @out=dividend.to_f/divisor.to_f
    display
  end
  private
  def input
    gets.chomp
  end
  def arrInput
    puts "Input the values till u wish and then press ="
    t=input
    while t!= "="
      @array.push(t)
      t=input
    end
  end
  def display
    puts @out
  end
end
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
