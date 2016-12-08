require 'rails_helper'

feature "registers a new user" do
  scenario "user visits register form page" do
    visit "/"

    
      click_link("register")


    expect(page).to have_current_path register_path
  end

  scenario "user registers with valid information" do
    visit register_path

    within(".new_user") do
      fill_in "user_full_name", with: "username_test"
      fill_in "user_email", with: "username_test@gmail.com"
      fill_in "user_phone_number", with: "123-456-7890"
      fill_in "user_password", with: "12345"
      fill_in "user_password_confirmation", with: "12345"
      click_button("Register")
    end

    expect(page).to have_current_path root_path
    expect(page.find_by_id('profile_link')).to have_content("username_test")
  end

  scenario "user is shown errors with invalid information" do
    visit register_path

    within(".new_user") do
      fill_in "user_full_name", with: ""
      fill_in "user_email", with: ""
      fill_in "user_phone_number", with: ""
      fill_in "user_password", with: ""
      fill_in "user_password_confirmation", with: ""
      click_button("Register")
    end

    
    expect(page.find_by_id('errors')).to have_content()
  end
end