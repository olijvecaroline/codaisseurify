FactoryGirl.define do
  factory :photo do
  #  photo  { Faker::image_url }
    artist   { build(:artist) }
  end
end
