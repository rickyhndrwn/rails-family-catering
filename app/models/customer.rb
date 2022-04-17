class Customer < ApplicationRecord
  validates :name, presence: true
  validates :email,
    presence: true,
    uniqueness: true,
    format: {
      with: /\A[\w+\-.]+@[a-z\d\-.]+\.[c][o][m]\z/,
      message: 'wrong format'
    }

  has_many :orders
end
