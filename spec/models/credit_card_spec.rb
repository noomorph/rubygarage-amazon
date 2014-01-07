require 'spec_helper'

describe CreditCard do
  it { should belong_to :customer } 
  it { should have_many :orders } 
  it { should validate_presence_of :number }
  it { should validate_presence_of :cvv }
  it { should ensure_inclusion_of(:expiration_month).in_range(1..12) }
  it { should ensure_inclusion_of(:expiration_year).in_range(2014..2100) }

  it { should validate_presence_of :first_name }
  it { should ensure_length_of(:first_name).is_at_most(50) }

  it { should validate_presence_of :last_name }
  it { should ensure_length_of(:last_name).is_at_most(50) }
end
