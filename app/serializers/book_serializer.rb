class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :isbn, :price, :link
  # belongs_to :user
  # has_one :user
end
