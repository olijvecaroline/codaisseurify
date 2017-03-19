class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true, length: {maximum: 100}

  def self.order_by_title
      order(:title)
      @sorted = order(:title)
  end

    def self.order_by_title_descending
      order(:title).reverse
      @reversed= order(:title).reverse
    end
end
