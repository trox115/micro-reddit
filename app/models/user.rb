class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :name, presence: true

    validates :email, presence: true, length: {minimum:4, maximum:255},
    format: { with: VALID_EMAIL_REGEX },
    uniqueness:  { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 8 }
    has_secure_password
    has_many :posts
    has_many :comments




end
