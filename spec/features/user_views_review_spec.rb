require 'rails_helper'

feature 'user visits single book page and reviews' do

  scenario "user sees reviews of book" do

    book = FactoryGirl.create(:book)
    review = FactoryGirl.create(:review)

    visit "/books/#{book.id}"


    expect(page).to have_content 5
    expect(page).to have_content "This is a test"


  end
end
