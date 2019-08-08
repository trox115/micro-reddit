class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {maximum:255}

  validates :body, presence: true, length: {minimum:10}
  has_many :comments

  validates :user_id, presence: true
  validates :title, presence: true, length: {minimum:1, maximum:60}
  validates :body, presence: true, length: {minimum:1}
end
