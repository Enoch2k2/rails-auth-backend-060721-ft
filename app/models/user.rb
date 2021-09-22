class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  has_secure_password # (comes from BCrypt) gives us password= which salts and hashes our password and stores it as password_digest
end
