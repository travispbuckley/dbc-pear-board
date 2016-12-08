require 'rails_helper'

RSpec.describe Slot, type: :model do
  let (:slot) {Slot.create(day: "Saturday", start:"3:30")}

  describe "attributes" do
    context "test attributes of Slot model" do
      it 'has a day attribute' do
        expect(slot.day).to eq "Saturday"
      end

      it 'has a start time' do
        expect(slot.start).to eq "3:30"
      end
    end
  end
end
