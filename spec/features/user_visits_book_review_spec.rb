require 'rails_helper'

feature 'user visits single book page and reviews' do

  scenario "user sees details on book" do

    car = FactoryGirl.create(:book)

    visit book_path(book.id)

    expect(page).to have_content "Generic"
    expect(page).to have_content "Some Guy"
    expect(page).to have_content 1950
    expect(page).to have_content "This is a test"
    expect(page).to have_content "Software"

  end
end
