require 'rails_helper'

feature 'user visits book index' do

  scenario "user sees all books" do

    car = FactoryGirl.create(:book)

    visit '/books'

    expect(page).to have_content "Generic"
    expect(page).to have_content "Some Guy"
    expect(page).to have_content 1950
    expect(page).to have_content "This is a test"
    expect(page).to have_content "Software"

  end
end
