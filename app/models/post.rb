class Post < ApplicationRecord
  enum status: { draft: 0, published: 1}
  validates_presence_of :title, :body
  belongs_to :users, optional: true
end
