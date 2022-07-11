# # Topics
#
# * functions
# * math
# * arrays
# * iterating/looping
#
# # Calculator
#
# you will build a simple calculator script with the following methods:
#
# `add` takes two parameters and adds them
#
# `subtract` takes two parameters and subtracts the second from the first
#
# `sum` takes an *array* of parameters and adds them all together
#
# # Warning
#
# You may not have enough knowledge yet to complete `sum`. You will
# probably need to use **loops** (e.g. `while`) or **iterators**
# (e.g. `each`) to get the tests to pass.
#
# # Bonus
#
# There are also some bonus exercises for when you finish the regular
# ones. The bonus round will help teach you test-driven *development*,
# not simply test-guided *learning*.
#
# Your mission, should you choose to accept it, is to write *tests*
# for three new methods:
#
# * `multiply` which multiplies two numbers together
# * `power` which raises one number to the power of another number
# * `[factorial](http://en.wikipedia.org/wiki/Factorial)` (check
#   Wikipedia if you forgot your high school math).
# http://en.wikipedia.org/wiki/Factorial


require_relative "../lib/02_calculator"

RSpec.describe Calculator do

    let (:calculator) {Calculator.new}
    let (:num1) {5}
    let (:num2) {3}
    let (:array) {[4,5,6]}
    let (:num0) {0}
    let (:array_empty) {[]}

    context "adding two numbers together" do
        it "should return the sum of two numbers" do
            result=calculator.add(num1,num2)
            expect(result).to eq(8)
        end
    end
    context "subtracting one number from other" do
        it "should return the difference of two numbers" do
            result=calculator.subtract(num1,num2)
            expect(result).to eq(2)
        end
    end
    context " add the elements of blank array" do
        it "should return 0" do
            result=calculator.sum(array_empty)
            expect(result).to eq(0)
        end
    end
    context " add the elements of non-empty array" do
        it "should return addition of all the numbers" do
            result=calculator.sum(array)
            expect(result).to eq(15)
        end
    end
    context " multiply the elements of blank array" do
        it "should return 0" do
            result=calculator.multiply(array_empty)
            expect(result).to eq(0)
        end
    end
    context " multiply the elements of non-empty array" do
        it "should return multiplication of all the numbers" do
            result=calculator.multiply(array)
            expect(result).to eq(120)
        end
    end
    context "0 power of number" do
        it "should return 1" do
            result=calculator.power(num1,num0)
            expect(result).to eq(1)
        end
    end
    context "non-zero power of number" do
        it "should return the specific power of number" do
            result=calculator.power(num1,num2)
            expect(result).to eq(125)
        end
    end
    context "factorial of number 0" do
        it "should return 1" do
            result=calculator.factorial(num0)
            expect(result).to eq(1)
        end
    end
    context "factorial of number other than 0" do
        it "should return the factorial value of number" do
            result=calculator.factorial(num2)
            expect(result).to eq(6)
        end
    end
end


