require 'spec_helper'

describe Book do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should_not allow_value(-0.001).for :price }
  it { should allow_value(0).for :price }
  it { should_not allow_value(-1).for :count_in_stock }
  it { should allow_value(0).for :count_in_stock }
end
