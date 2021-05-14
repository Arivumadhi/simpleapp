class Like < ApplicationRecord
  belongs_to :post
  validates :username, presence: true,
  length: {minimum: 3}
end
