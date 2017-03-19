FactoryGirl.define do
  factory :photo do
    image "fotostring"
    artist   { build(:artist) }
  end
end
