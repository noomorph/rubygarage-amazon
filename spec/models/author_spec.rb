require 'spec_helper'

describe Author do
  it { should have_many :books }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should allow_value(nil).for :biography }
end
