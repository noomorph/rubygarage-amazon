require 'spec_helper'

describe Address do
  it { should belong_to :country }

  it { should validate_presence_of :line1 }
  it { should ensure_length_of(:line1).is_at_most(50) }
  it { should ensure_length_of(:line2).is_at_most(50) }
  it { should ensure_length_of(:line3).is_at_most(50) }

  it { should validate_presence_of :zipcode }
  it { should ensure_length_of(:zipcode).is_at_most(10) }

  it { should validate_presence_of :city }
  it { should ensure_length_of(:city).is_at_most(50) }

  it { should validate_presence_of :phone }
  it { should ensure_length_of(:phone).is_at_most(50) }
end
