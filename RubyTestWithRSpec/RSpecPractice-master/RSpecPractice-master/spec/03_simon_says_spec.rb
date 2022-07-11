# # Simon Says
#
# ## Topics
#
# * functions
# * strings
# * default parameter values
#
# ## Hints
#
# When you make the second `repeat` test pass, you might break the
# **first**
#
#
# Wait a second! How can you make the "repeat" method
# take one *or* two arguments?
#
# ##Hint: *default values*

require_relative "../lib/03_simon_says"

RSpec.describe Simon do
    let (:simon) {Simon.new}

    describe "echo method" do
        it "should return the string passed to it" do
            result=simon.echo("nitin")
            expect(result).to eq("nitin")
        end
    end

    describe "shout function" do
        it "should convert the given string in uppercase" do
            result=simon.shout("NitIn")
            expect(result).to eq("NITIN")
        end
    end

    describe "repeat method" do
        context "0 times" do
            it "should return empty string " do
                result=simon.repeat("nitin",0)
                expect(result).to eq("")
            end
        end


        context "with default argument" do
            it "should return string two times " do
                result=simon.repeat("nitin")
                expect(result).to eq("nitin nitin")
            end
        end

        context "5 times" do
            it "should return string 5 times " do
                result=simon.repeat("nitin",5)
                expect(result).to eq("nitin nitin nitin nitin nitin")
            end
        end
    end

    describe "start of word method" do
        it "should return perticular starting characters of word" do
            result=simon.start_of_word("nitin",2)
            expect(result).to eq("ni")
        end
    end

    describe "first word" do
        it "should return the first word of string or sentence" do
            result=simon.first_word("nitin is an automation engineer")
            expect(result).to eq("nitin")
        end
    end
    describe "titeleize method" do

        context "passing only one word as argument" do
            it "should return the word with first letter capital" do
                result=simon.titleize("Hello")
                expect(result).to eq("Hello")
            end
        end

        context "passing a sentence as argument" do
            it "should return the sentence with first letter capital of all the words of sentence" do
                result=simon.titleize("nitin is an automation engineer")
                expect(result).to eq("Nitin Is An Automation Engineer")
            end
        end

        context "passing a sentence including the and over in the sentence as argument" do
            it "should return the sentence with first letter capital of all the words of sentence except the ,and,over" do
                result=simon.titleize("the fight between the nitin and dhruvik over food")
                expect(result).to eq("The Fight Between the Nitin and Dhruvik over Food")
            end
        end
    end
end

