class Book < ApplicationRecord
  has_many :publications
  has_many :authors, through: :publications

  validates :title, presence: true
  validates :authors, presence: true
end
