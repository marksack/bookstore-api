class Author < ApplicationRecord
  include Friendlyable

  has_many :publications
  has_many :books, through: :publications

  validates :name, presence: true
end
