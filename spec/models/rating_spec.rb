require 'spec_helper'

describe Rating do
  it { should belong_to :book }
  it { should allow_value(nil).for :review }
  it { should ensure_inclusion_of(:score).in_range(1..10) }
end
