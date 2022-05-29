require 'rails_helper'

RSpec.describe Shopper, type: :model do
  subject { build(:shopper) }

  it { is_expected.to have_many(:orders) }

  it { should validate_presence_of(:nif) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
end
