class Merchant < ApplicationRecord
  has_many :orders

  validates :cif, presence: true
  validates :name, presence: true
  validates :email, presence: true
end
