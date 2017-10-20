class Book < ApplicationRecord
  belongs_to :user
  validates  :user,:title,:author, :isbn, :price, presence: true
end
