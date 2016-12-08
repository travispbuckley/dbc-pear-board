require 'rails_helper'

RSpec.describe Feedback, type: :model do
  let (:feedback) {Feedback.new(author_id: 1, session_id: 1, feedback_text: "Best mentor ever!")}

  describe "attributes" do
    context "test attributes of Feedback model" do
      it 'feedback text' do
        expect(feedback.feedback_text).to eq "Best mentor ever!"
      end
    end
  end
end
