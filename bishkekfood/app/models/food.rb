class Food < ApplicationRecord
  belongs_to :shop
  belongs_to :category
end
