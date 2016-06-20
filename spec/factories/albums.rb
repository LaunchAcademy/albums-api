FactoryGirl.define do
  factory :album do
    sequence(:title) { |n| "Album - Generic Flipper #{n}" }
    artist "Flipper"
  end
end
