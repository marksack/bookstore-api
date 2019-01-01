class Book < ApplicationRecord
  include Friendlyable

  has_many :publications
  has_many :authors, through: :publications

  validates :title, presence: true
  validates :authors, length: { minimum: 1 }
end
