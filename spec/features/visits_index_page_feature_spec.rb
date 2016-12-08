require 'rails_helper'

feature "visits the index page" do
  scenario "the user sees a title, which is a link" do
    visit "/"

    expect(find_link('pear board', :visible => :all).visible?).to be true
  end

  scenario "the user sees a register link" do
    visit "/"

    expect(find_link('register', :visible => :all).visible?).to be true
  end

  scenario "the user sees a login link" do
    visit "/"

    expect(find_link('log in', :visible => :all).visible?).to be true
  end

end