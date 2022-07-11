require "spec_helper"

RSpec.describe Person do
  let(:person) {Person.new}
  context "create a object without initializing a name" do
    it "it should not be valid" do
      expect(person).to_not be_valid
    end
  end
  context "create a object and initialize a name" do
    it "should be valid" do
      person.first_name="nitin"
      expect(person).to be_valid
    end
  end
end
