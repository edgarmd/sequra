class Merchant < ApplicationRecord
  has_many :orders
  has_many :disbursements, through: :orders

  validates :cif, presence: true
  validates :name, presence: true
  validates :email, presence: true
end
