require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test 'valid book' do
    book = Book.new(title: 'Book Title')
    assert book.valid?
  end

  test 'invalid without title' do
    book = Book.new(title: '')
    refute book.valid?, 'book is valid without title'
    assert_not_nil book.errors[:title], 'no validation error for title present'
  end

end
