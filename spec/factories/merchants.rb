FactoryBot.define do
  factory :merchant do
    cif { Faker::Number.number(digits: 10) }
    name { Faker::Name.name }
    email { Faker::Internet.email }
  end
end
