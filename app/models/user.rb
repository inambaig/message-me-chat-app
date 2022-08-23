class User < ApplicationRecord
  has_secure_password
  has_many :messages
  validates :username, presence: true, length: {minimum: 3, maximum: 10}
  validates :password, presence: true, length: {minimum: 6}
end
