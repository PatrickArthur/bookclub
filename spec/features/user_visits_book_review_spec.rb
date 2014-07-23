require 'rails_helper'

feature 'user visits single book page and reviews' do

  scenario "user sees details on book" do

    book = FactoryGirl.create(:book)

    visit "/books/#{book.id}"


    expect(page).to have_content "Generic"
    expect(page).to have_content "Some Guy"
    expect(page).to have_content 1950


  end
end
