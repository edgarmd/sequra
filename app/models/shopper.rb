class Shopper < ApplicationRecord
  has_many :orders

  validates :nif, presence: true
  validates :name, presence: true
  validates :email, presence: true
end
