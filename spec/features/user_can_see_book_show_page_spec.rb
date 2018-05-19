require 'rails_helper'

describe 'when user visits book show page' do
  scenario 'it sees book title' do
    title = 'Fight Club'
    book = Book.create!(title: title)

    visit book_path(book)

    expect(page).to have_content(book.title)
  end

  scenario 'it sees list of book reviews' do
  end 
end

# As a User,
# When I visit a book show page,
# I see the book title and a list of reviews for that book,
# which includes the review text, and the name of the user that created that review.
# I also see the rating that the user gave the book.
