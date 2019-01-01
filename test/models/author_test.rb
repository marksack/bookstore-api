require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test 'valid author' do
    author = Author.new(name: 'John')
    assert author.valid?
  end

  test 'invalid without name' do
    author = Author.new(name: '')
    refute author.valid?, 'author is valid without name'
    assert_not_nil author.errors[:name], 'no validation error for name present'
  end
end
