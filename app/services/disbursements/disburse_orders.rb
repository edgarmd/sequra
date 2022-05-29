module Disbursements
  class DisburseOrders
    def initialize(orders)
      @orders = orders
    end

    def call
      @orders.each do |order|
        order.disburse!
      end
    end
  end
end
