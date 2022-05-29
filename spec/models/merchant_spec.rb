RSpec.describe Merchant, type: :model do
  subject { build(:merchant) }

  it { should have_many(:orders) }

  it { should validate_presence_of(:cif) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
end
