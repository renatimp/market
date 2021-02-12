class User < ApplicationRecord
  enum role: {admin: 0, gerente: 1 , caixa: 2}

  has_secure_password

  validates :name, presence: true , length: { maximum: 20 }
  validates :role, presence: true
  validates :mat, presence: true, uniqueness: true, length: { maximum: 6 }
  validates :password, length: { minimum: 6}
end
