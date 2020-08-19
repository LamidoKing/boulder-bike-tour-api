class Submission < ApplicationRecord
    validates :slogan, length: { maximum: 50 }, presence: true
    EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: EMAIL_FORMAT }, uniqueness: true
    validates :first_name, :last_name, presence: true
end
