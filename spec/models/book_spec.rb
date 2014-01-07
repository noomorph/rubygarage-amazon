require 'spec_helper'

describe Book do
  it { should belong_to :author }
  it { should belong_to :category }
  it { should have_many :ratings }
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:count_in_stock).only_integer }
  it { should validate_numericality_of(:count_in_stock).is_greater_than_or_equal_to(0) }
end
