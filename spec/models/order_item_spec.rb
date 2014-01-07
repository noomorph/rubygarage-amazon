require 'spec_helper'

describe OrderItem do
  it { should belong_to :book }
  it { should belong_to :order }

  it { should validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:quantity).only_integer }
  it { should validate_numericality_of(:quantity).is_greater_than_or_equal_to(0) }
end
