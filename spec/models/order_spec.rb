require 'spec_helper'

describe Order do
  it { should belong_to :customer }
  it { should have_one :billing_address }
  it { should have_one :shipping_address }

  it { should validate_numericality_of(:total_price).is_greater_than_or_equal_to(0) }
  it { should allow_value(nil).for :total_price }
  it { should have_db_column(:completed_date).of_type(:datetime) }
  it { should allow_value(nil).for :completed_date }
  it { should ensure_inclusion_of(:state).in_range(1..3) }
end
