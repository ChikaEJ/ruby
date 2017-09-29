class Department < ApplicationRecord
  has_many :staff,
           dependent: :destroy
  validates :title, presence: true, length: {maximum: 50}

end
