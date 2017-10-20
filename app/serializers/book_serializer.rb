class BookSerializer < ActiveModel::Serializer
  attributes :title, :author, :isbn, :price
  # belongs_to :user
  # has_one :user
end
