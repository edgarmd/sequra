class Disbursement < ActiveRecord::Base
  belongs_to :order
  has_one :merchant, through: :order

  validates :amount, presence: true
  validates :order, presence: true
end
