require 'rails_helper'

RSpec.describe Make, :type => :model do

    context "Test to validade a Make" do
      it "Is a Make model valid?" do
        # expect{Make.where(name: "test-make-2").update_or_create(name: "test-make-2", webmotors_id: 3)}.to change(Make,:count).by(1)
        make = Make.new
        make.name = "BMW"
        make.webmotors_id = 5
        expect(make.valid?).to be_truthy
      end
    end

    # context 'when the maker already exists in the database' do
    #   it "updates the existing record" do
    #     maker.save
    #     expect{Make.where(name: maker.name).update_or_create(name: maker.name, webmotors_id: maker.webmotors_id)}.to_not change(Make,:count)
    #   end
    # end

    context "Test to persist a new Make" do
      it "Is a Make saved?" do
        # expect{Make.where(name: "test-make-2").update_or_create(name: "test-make-2", webmotors_id: 3)}.to change(Make,:count).by(1)
        make = Make.new
        make.name = "XXXX"
        make.webmotors_id = 5
        expect(make.save).to be_truthy
      end
    end
end
