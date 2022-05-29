class Order < ApplicationRecord
  belongs_to :merchant
  belongs_to :shopper
  has_one :disbursement

  validates :amount, presence: true

  scope :completed, -> { where.not(completed_at: nil) }

  def disburse!
    Disbursement.create!(order: self, amount: fee_amount)
  end

  private

  def fee_amount
    if amount < 50
      amount * (1 - 0.01)
    elsif amount < 300
      amount * (1 - 0.0095)
    else
      amount * (1 - 0.0085)
    end
  end
end
