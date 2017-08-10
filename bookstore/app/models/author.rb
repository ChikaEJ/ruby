class Author < ApplicationRecord
  has_many :book
  validates :name, presence: true,
                  length: {minimum: 1, maximum: 250},
                  uniqueness: true
end
