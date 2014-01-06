FactoryGirl.define do
  factory :book do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph(3) }

    factory :book_with_ratings do
      ignore { ratings_count 5 }

      after :create do |book, evaluator|
        create_list :rating, evaluator.ratings_count, book: book
      end
    end
  end

  factory :rating do
    book
    score { rand(1..10) }
    review { Faker::Lorem.paragraph(2) }
  end
end
