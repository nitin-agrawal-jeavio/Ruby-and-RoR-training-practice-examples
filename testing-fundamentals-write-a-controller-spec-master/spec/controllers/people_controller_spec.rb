require "rails_helper"

describe PeopleController do
  describe "#create" do
    context "when person is valid" do
      it "redirects to #show" do
        person = Person.new
        allow(Person).to receive(:new).and_return person
        allow(person).to receive(:save).and_return(true)

        post :create , person: {first_name: "Nitin"}

        expect(response).to redirect_to(person)
      end
    end

    context "when person is invalid" do
      it "renders the 'new' template" do
        person = Person.new
        allow(Person).to receive(:new).and_return person
        allow(person).to receive(:save).and_return(false)

        post :create , person: {first_name: "Nitin"}

        expect(response).to render_template(:new)
      end
    end
  end
end
