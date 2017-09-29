class Photo < ActiveRecord::Base
  belongs_to :photographer

  validates :title, length: {maximum: 50}
  validates :description, length: {maximum: 255}


end
