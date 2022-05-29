require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { build(:order) }

  it { should belong_to(:merchant) }
  it { should belong_to(:shopper) }

  it { should validate_presence_of(:amount) }
end
