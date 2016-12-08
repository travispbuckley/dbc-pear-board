require 'rails_helper'

RSpec.describe Session, type: :model do
  let (:session) {Session.new(slot_id: 1, student_id: 1, mentor_id: 2, session_datetime: DateTime.new(2016, 12, 11, 3, 30, 0))}

  describe "attributes" do
    context "test attributes of Session model" do
      it 'has a datetime on the weekend' do
        expect(session.session_datetime.on_weekend?).to be_truthy
      end
    end
  end
end
