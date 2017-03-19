FactoryGirl.define do
  factory :song do
    title    { Faker::Lorem.sentence(2) }
    lenght_in_min   30
    artist   { build(:artist) }
  end
end
