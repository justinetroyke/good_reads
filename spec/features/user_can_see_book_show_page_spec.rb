require 'rails_helper'

describe 'when user visits book show page' do
  scenario 'it sees book title' do
    title = 'Fight Club'
    book = Book.create!(title: title)

    visit book_path(book)

    expect(page).to have_content(book.title)
  end

  scenario 'it sees list of book reviews' do
    title = 'Fight Club'
    name = 'Justine Troyke'
    name_2 = 'Tyler Durden'
    words = 'Awesome Sauce'
    words_2 = 'I do not want to talk about it'
    rating = 5
    user = User.create!(name: name)
    user_2 = User.create!(name: name_2)
    book = Book.create!(title: title)
    review = book.reviews.create!(words: words, rating: rating)
    review_2 = book.reviews.create!(words: words_2, rating: rating)

    visit book_path(book)

    expect(page).to have_content(book.review.words)
    expect(page).to have_content(book.review_2.words_2)
    expect(page).to have_content(user.name)
    expect(page).to have_content(user.name_2)
    expect(page).to have_content(book.review.rating)
    expect(page).to have_content(book.review_2.rating_2)
  end
end

# As a User,
# When I visit a book show page,
# I see the book title and a list of reviews for that book,
# which includes the review text, and the name of the user that created that review.
# I also see the rating that the user gave the book.
