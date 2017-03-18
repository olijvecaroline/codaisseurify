class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_one :photo
  accepts_nested_attributes_for :songs

  validates :name, presence: true

end
