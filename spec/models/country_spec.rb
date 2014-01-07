require 'spec_helper'

describe Country do
  it { should validate_uniqueness_of :name }
end
