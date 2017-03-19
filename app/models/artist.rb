class Artist < ApplicationRecord
  has_many :songs
  has_one :photo
  accepts_nested_attributes_for :songs

  validates :name, presence: true

  def self.order_by_name
      order(:name)
    end


end
