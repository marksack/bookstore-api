class Publication < ApplicationRecord
  include Friendlyable

  belongs_to :author
  belongs_to :book
end
