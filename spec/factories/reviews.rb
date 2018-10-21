FactoryBot.define do
  factory :review do
    description { "MyText" }
    rating { 1 }
    book { "" }
    user { nil }
  end
end
