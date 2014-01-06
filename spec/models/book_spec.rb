require 'spec_helper'

describe Book do
  it "is invalid without a title" do
    book_without_title = FactoryGirl.build :book, title: nil
    expect(book_without_title).not_to be_valid
  end

  it "is invalid without a description" do
    book_without_description = FactoryGirl.build :book, description: nil
    expect(book_without_description).not_to be_valid
  end
end
