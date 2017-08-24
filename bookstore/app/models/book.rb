class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  has_many :comments
  validates :title, presence: true,
                    length: {minimum: 1, maximim: 250},
                    uniqueness: true
  validates :price, numericality: { greater_than: 0 }
end
