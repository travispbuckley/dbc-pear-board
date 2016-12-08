require 'rails_helper'

RSpec.describe User, type: :model do
  let (:user) { User.create(full_name: "test name", email: "test@test.com",
                    phone_number: "111-222-3333", password: "12345") }
  describe "attributes" do
    context "test attribute getters" do
      it 'has a full_name' do
        expect(user.full_name).to eq "test name"
      end

      it 'has an email' do
        expect(user.email).to eq "test@test.com"
      end

      it 'has a picture link' do
        expect(user.picture_link).to eq "http://www.sessionlogs.com/media/icons/defaultIcon.png"
      end

      it 'has a phone number' do
        expect(user.phone_number).to eq "111-222-3333"
      end

      it 'has an encrypted password' do
        expect(user.password_digest).to_not eq "12345"
      end
    end
  end
end
