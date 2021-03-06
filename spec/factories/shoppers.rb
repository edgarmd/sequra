FactoryBot.define do
  factory :shopper do
    nif { Faker::Number.number(digits: 10) }
    name { Faker::Name.name }
    email { Faker::Internet.email }
  end
end
