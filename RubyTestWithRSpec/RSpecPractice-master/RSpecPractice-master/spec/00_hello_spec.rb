require_relative "../lib/00_hello"
RSpec.describe Hello do

    let(:hello) {Hello.new}

    describe "hello method" do
        it "hello method should return hello" do
            expect(hello.hello).to eq("Hello!")
        end
    end

    describe "greet method" do
        it "greet should return greeting message" do
            expect(hello.greet("nitin")).to eq("Hello, nitin!")
        end
    end
end


