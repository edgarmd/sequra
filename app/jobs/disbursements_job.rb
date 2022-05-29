class DisbursementsJob < ApplicationJob
  queue_as :default

  def perform
    orders = Order.completed

    Disbursements::DisburseOrders.new(orders).call
  end
end
