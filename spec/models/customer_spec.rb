require 'spec_helper'

describe Customer do
  it { should have_many :orders }
  it { should validate_uniqueness_of :email }
  it { should have_secure_password }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should have_many :orders }
end
