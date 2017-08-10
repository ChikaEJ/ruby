class Product < ApplicationRecord
  belongs_to :category
  validates :title, presence: true,
                    length: { minimum: 5, maximum: 250 }

  validates :price, presence: true,
                    numericality: { greater_then: 0 }
end
