
require "rails_helper"

feature "User adds new book" do

  scenario "fill out new book form" do

    book = FactoryGirl.create(:book)

    visit new_book_path

    fill_in "Title", with: book.title
    fill_in "Author", with: book.author
    fill_in "Year", with: book.year
    fill_in "Description", with: book.description
    select 'Mystery', from: 'book[category]'
    click_button "Submit"


    expect(page).to have_content("Success!")


  end

  scenario "User does not fill out fields" do

    visit new_book_path


    click_button "Submit"


    expect(page).to have_content("Your book couldn't be saved.")

  end

end
