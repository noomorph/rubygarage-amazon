require 'spec_helper'

describe Customer do
  it { should have_many :orders }
  it { should have_secure_password }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should have_many :orders }

  it "should validate uniqueness of email" do
    expect(FactoryGirl.create :customer).to validate_uniqueness_of(:email).case_insensitive
  end
end
