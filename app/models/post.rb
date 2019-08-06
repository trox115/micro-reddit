class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {maximum:255}

  validates :body, presence: true, length: {minimum:10}
  has_many :comments
end
