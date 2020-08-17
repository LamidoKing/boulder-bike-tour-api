class Admin < ApplicationRecord
    has_many :riders, dependent: :destroy
    EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: EMAIL_FORMAT }, uniqueness: true

    before_save { self.email = email.downcase }
    has_secure_password
end
