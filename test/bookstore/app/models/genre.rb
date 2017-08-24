class Genre < ApplicationRecord
  has_many :book
  validates :title, presence: true,
                    length: {minimum: 1, maximim: 250},
                    uniqueness: true
end
