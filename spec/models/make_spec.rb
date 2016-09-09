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

    context "Test to persist a new Make" do
      it "Is a Make saved?" do
        # expect{Make.where(name: "test-make-2").update_or_create(name: "test-make-2", webmotors_id: 3)}.to change(Make,:count).by(1)
        make = Make.new
        make.name = "XXXX"
        make.webmotors_id = 5
        expect(make.save).to be_truthy
      end
    end

    context 'Test create a new make in the database' do
      it "Can Model be persist?" do
        expect{
          Make.where(name: "bmw-maker")
          .create(name: "bmw-maker", webmotors_id: 1000)}
          .to change(Make,:count).by(1)
      end
    end

end
