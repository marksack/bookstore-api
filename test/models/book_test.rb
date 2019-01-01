require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test 'valid book with one author' do
    book = Book.new title: 'Book Title'
    book.authors << authors(:one)
    assert book.valid?
  end

  test 'valid book with two authors' do
    book = Book.new title: 'Book Title'
    book.authors << authors(:one)
    book.authors << authors(:two)
    assert book.valid?
    assert_equal 2, book.authors.size
  end

  test 'invalid without title' do
    book = Book.new(title: '')
    refute book.valid?, 'book is valid without title'
    assert_not_nil book.errors[:title], 'no validation error for title present'
  end

  test 'invalid without any authors' do
    book = Book.new title: 'Book Title'
    refute book.valid?, 'book is valid without author'
    assert_not_nil book.errors[:authors], 'no validation error for authors present'
  end
end
