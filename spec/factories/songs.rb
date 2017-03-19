FactoryGirl.define do
  factory :song do
    title    { Faker::lorem.sentence(2) }
    length   rand(40)
    artist   { build(:artist) }
  end
end
