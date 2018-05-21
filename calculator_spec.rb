require_relative "calculator"
require "stringio"
describe Numbers do
  let(:num) {Numbers.new}
  after :all do
    $stdin=STDIN
  end
  context "When testing the Number class addition function" do
    let(:io) {StringIO.new}
    before :each do
      #$stdin = StringIO.new("2\n3\n4\n")
    end

    after :each do
      $stdin = STDIN
    end

    it "The add function should return the sum of the numbers" do
      #  expect(num.array).to eql ["2","3","4","5","6"]
     # mocked_object = double("obj")
     # allow_any_instance_of(IO).to receive(:gets).and_return(mocked_object)
     # allow(mocked_object).to receive(:chomp).and_return("2\n3\n4\n")
      allow(num).to receive(:gets).and_return("2","3","4","5","=")
      expect{num.add}.to output("Input the values till u wish and then press =\n14.0\n").to_stdout
    end
    it "The add function should return the sum of the numbers" do
=begin
      io.puts "2.3\n3.45\n7.68\n="
      io.rewind
      $stdin=io
=end
      #require 'pry'; binding.pry
      allow(num).to receive(:gets).and_return("2.3","3.45","7.68","=")
       expect{num.add}.to output("Input the values till u wish and then press =\n13.43\n").to_stdout
    end
    it "The add function should return the sum of the numbers" do
      allow(num).to receive(:gets).and_return("-2","-3","-4","-7","=")
      expect{num.add}.to output("Input the values till u wish and then press =\n-16.0\n").to_stdout
    end
    it "The add function should return the sum of the numbers" do
      allow(num).to receive(:gets).and_return("-0","0","-4","-7","=")
      expect{num.add}.to output("Input the values till u wish and then press =\n-11.0\n").to_stdout
    end
    it "The add function should return the sum of the numbers" do
      allow(num).to receive(:gets).and_return("-0.0","0.0","-4.6700","-7.9800","=")
      expect{num.add}.to output("Input the values till u wish and then press =\n-12.65\n").to_stdout
    end
    it "The add function should return the sum of the numbers" do
      allow(num).to receive(:gets).and_return("-0.0","0.0","=")
      expect{num.add}.to output("Input the values till u wish and then press =\n0.0\n").to_stdout
    end
  end
  context "When testing the  Number class subtraction function" do
    it "The subtarct function should return the difference between minuend and subtrahend" do
      allow(num).to receive(:gets).and_return("5","6","=")
      expect{num.sub}.to output("Input the minuend\nInput the subtrahend\n-1.0\n").to_stdout
    end
    it "The subtarct function should return the difference between minuend and subtrahend" do
      allow(num).to receive(:gets).and_return("5.98","68.21","=")
      expect{num.sub}.to output("Input the minuend\nInput the subtrahend\n-62.23\n").to_stdout
    end
    it "The subtarct function should return the difference between minuend and subtrahend" do
      allow(num).to receive(:gets).and_return("0.0000","68.21000","=")
      expect{num.sub}.to output("Input the minuend\nInput the subtrahend\n-68.21\n").to_stdout
    end
    it "The subtarct function should return the difference between minuend and subtrahend" do
      allow(num).to receive(:gets).and_return("-0.0000","0","=")
      expect{num.sub}.to output("Input the minuend\nInput the subtrahend\n-0.0\n").to_stdout
    end
    it "The subtarct function should return the difference between minuend and subtrahend" do
      allow(num).to receive(:gets).and_return("-8.978","-9.65","=")
      expect{num.sub}.to output("Input the minuend\nInput the subtrahend\n0.672\n").to_stdout
    end
  end
end
