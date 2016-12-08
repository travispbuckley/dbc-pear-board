require 'rails_helper'

feature "displays users profile page" do 
	scenario "user can't visit a profile page if not logged in" do 
		visit '/users/1'

		expect(page).to have_current_path root_path
	end

	scenario "shows the profile page if the user is logged in" do 
		user = User.create(full_name:"username_test", email: "username_test@gmail.com", phone_number: "123-456-7890", password: "12345")

    visit root_path

    within("#index_page_links_div") do 
      find("#login_link").click
    end
    

    within("#login_form") do
      fill_in "email", with: "username_test@gmail.com"
      fill_in "password", with: "12345"
      click_button("log in")
    end
    click_link("username_test")
    expect(page).to have_current_path user_path(user.id)
	end

	scenario "shows the users full name" do 
		user = User.create(full_name:"username_test", email: "username_test@gmail.com", phone_number: "123-456-7890", password: "12345")

    visit root_path

    within("#index_page_links_div") do 
      find("#login_link").click
    end
    

    within("#login_form") do
      fill_in "email", with: "username_test@gmail.com"
      fill_in "password", with: "12345"
      click_button("log in")
    end
    click_link("username_test")
    expect(page).to have_content("#{user.full_name}")
	end

  scenario "shows the users contact email" do 
    user = User.create(full_name:"username_test", email: "username_test@gmail.com", phone_number: "123-456-7890", password: "12345")

    visit root_path

    within("#index_page_links_div") do 
      find("#login_link").click
    end
    

    within("#login_form") do
      fill_in "email", with: "username_test@gmail.com"
      fill_in "password", with: "12345"
      click_button("log in")
    end
    click_link("username_test")
    expect(page).to have_content("Email: #{user.email}")
  end  

  scenario "shows the users contact number" do 
    user = User.create(full_name:"username_test", email: "username_test@gmail.com", phone_number: "123-456-7890", password: "12345")

    visit root_path

    within("#index_page_links_div") do 
      find("#login_link").click
    end
    

    within("#login_form") do
      fill_in "email", with: "username_test@gmail.com"
      fill_in "password", with: "12345"
      click_button("log in")
    end
    click_link("username_test")
    expect(page).to have_content("Phone Number: #{user.phone_number}")
  end    

	scenario "user has a profile picture" do 
		user = User.create(full_name:"username_test", email: "username_test@gmail.com", phone_number: "123-456-7890", password: "12345")

    visit root_path

    within("#index_page_links_div") do 
      find("#login_link").click
    end
    

    within("#login_form") do
      fill_in "email", with: "username_test@gmail.com"
      fill_in "password", with: "12345"
      click_button("log in")
    end
    click_link("username_test")
    page.assert_selector('img', :count => 1)
  end

  scenario "user has content in their mentor section" do 
    user = User.create(full_name:"username_test", email: "username_test@gmail.com", phone_number: "123-456-7890", password: "12345")
    user2 = User.create(full_name:"mentor", email: "mentor_test@gmail.com", phone_number: "123-456-7890", password: "12345")
    slot = Slot.create(day: "saturday", start: "11:30")
    session = Session.create(student_id: user2.id, mentor_id: user.id, slot_id: slot.id, session_datetime: DateTime.now)

    visit root_path

    within("#index_page_links_div") do 
      find("#login_link").click
    end
    

    within("#login_form") do
      fill_in "email", with: "username_test@gmail.com"
      fill_in "password", with: "12345"
      click_button("log in")
    end
    click_link("username_test")
    expect(page).to have_content("Student: #{user2.full_name}")
	end
end