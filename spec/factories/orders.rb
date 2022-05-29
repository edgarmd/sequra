FactoryBot.define do
  factory :order do
    amount { Faker::Number.decimal(l_digits: 2) }
    merchant
    shopper
  end
end
