class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true , length: { maximum: 20 }
  validates :mat, presence: true, uniqueness: true, length: { maximum: 6 }
  validates :password, length: { minimum: 6}
end
