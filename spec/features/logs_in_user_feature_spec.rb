require 'rails_helper'

feature 'user visits login page' do

  scenario "user logs in" do
    User.create(full_name:"username_test", email: "username_test@gmail.com", phone_number: "123-456-7890", password: "12345")

    visit "/"

    within("#index_page_links_div") do 
      find("#login_link").click
    end
    

    within("#login_form") do
      fill_in "email", with: "username_test@gmail.com"
      fill_in "password", with: "12345"
      click_button("log in")
    end

    expect(page).to have_current_path root_path
    expect(page.find_by_id('profile_link')).to have_content("username_test")
  end

  scenario "user logs out" do
    User.create(full_name:"username_test", email: "username_test@gmail.com", phone_number: "123-456-7890", password: "12345")

    visit "/"

    within("#index_page_links_div") do 
      find("#login_link").click
    end
    

    within("#login_form") do
      fill_in "email", with: "username_test@gmail.com"
      fill_in "password", with: "12345"
      click_button("log in")
    end

    click_link("log out")
    

    expect(page).to have_content("log in")
  end
end