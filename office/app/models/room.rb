class Room < ActiveRecord::Base
  has_many :equipment, dependent: :destroy
  validates :title, presence: true,
            length: { minimum: 1, maximum: 250 }
  validates :number,  uniqueness: true, presence: true,
            numericality: { greater_than: 0, only_integer: true }

end
