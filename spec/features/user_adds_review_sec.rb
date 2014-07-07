
require "rails_helper"

feature "User adds new review" do

  scenario "fill out new review form" do

    car = FactoryGirl.create(:review)

    visit new_book_review_path

    select 1, from: 'review[rating]'
    fill_in "Body", with: book.body
    click_button "Submit"


    expect(page).to have_content("Success!")


  end

  scenario "User does not fill out fields" do

    visit new_book_review_path


    click_button "Submit"


    expect(page).to have_content("Your review couldn't be saved.")

  end

end
