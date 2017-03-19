class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_one :photo, dependent: :destroy
  accepts_nested_attributes_for :songs

  validates :name, presence: true

  def self.order_by_name
      order(:name)
    end


end
