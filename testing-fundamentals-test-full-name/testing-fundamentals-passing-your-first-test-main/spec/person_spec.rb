require_relative "../lib/person"

RSpec.describe Person do
  subject { Person.new(first_name: "nitin",last_name: "agrawal") }
  describe "inizialize method" do
    it { respond_to(:first_name) }

    it { respond_to(:last_name) }
  end

  describe "full_name method" do
    it { respond_to(:full_name)}

    it "should return correct full name" do
      expect(subject.full_name).to eq("nitin agrawal")
    end
  end
end