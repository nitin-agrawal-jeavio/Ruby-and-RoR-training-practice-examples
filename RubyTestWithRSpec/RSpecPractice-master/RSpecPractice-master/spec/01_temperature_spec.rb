# # Topics:
# * functions
# * floating-point math
#
# # Hints
#
# Remember that one degree fahrenheit is 5/9 of one degree celsius,
# and that the freezing point of water is 0 degrees celsius but 32
# degrees fahrenheit.
#
# In integer math, there **are no fractions**. So if you are using
# integer literals, you will be using integer math, which means, for
# example...
#
#    1 / 2 => 0
#
# In floating point math, there **are** fractions. So...
#
#    1.0 / 2.0 => 0.5
#
# See http://www.ruby-forum.com/topic/169330
# and http://en.wikipedia.org/wiki/IEEE_754-2008
# and http://en.wikipedia.org/wiki/Double_precision_floating-point_format
	  
require_relative "../lib/01_temperature"

RSpec.describe Temprature do
    let(:temprature) {Temprature.new}

    describe "ftoc method" do
        it "should convert the temprature from fahrenheit to celsius" do
            expect(temprature.ftoc(41)).to eq(5.0)
        end
    end

    describe "ctof method" do
        it "should convert the temprature from celsius to fahrenheit" do
            expect(temprature.ctof(5)).to eq(41.0)
        end
    end
end


