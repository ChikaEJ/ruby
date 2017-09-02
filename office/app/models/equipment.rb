class Equipment < ActiveRecord::Base
  belongs_to :room
  validates :title, presence: true,
            length: { minimum: 1, maximum: 250 }
  validates :description, presence: true,
            length: { minimum: 5, maximum: 250 }
end
