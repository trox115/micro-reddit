class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :user_id, presence: true
  validates :title, presence: true, length: {minimum:1, maximum:60}
  validates :body, presence: true, length: {minimum:1}
end
