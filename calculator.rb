require 'bigdecimal'
require 'bigdecimal/util' # loads the to_d method
class Calculator
  def initialize
   @array=Array.new
  end
  attr_reader :array, :out
  def add
    @out=0.0
    arrInput
    @array.each{|arr| @out+=arr.to_d}
    @array.clear
    display
  end
  def sub
    puts "Input the minuend"
    minuend=input
    puts "Input the subtrahend"
    subtrahend=input
    @out=minuend.to_d-subtrahend.to_d
    display
  end
  def mult
    @out=1.0
    arrInput
    @array.each{|arr| @out*=arr.to_d}
    @array.clear
    display
  end
  def div
    puts "Input the dividend"
    dividend=input
    puts "Input the divisor"
    divisor=input
    if divisor.to_d==0.0
      puts "Math Error"
    else
    @out=dividend.to_d/divisor.to_d
    display
    end
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
    puts @out.to_f
  end
end
