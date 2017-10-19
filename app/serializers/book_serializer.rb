class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :isbn, :price
  has_one :user
end
