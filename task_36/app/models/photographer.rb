class Photographer < ActiveRecord::Base
  has_many :photos, dependent: :destroy

  before_save :name_capitalize, :lastname_capitalize

  validates :name, presence: true, length: {maximum: 50}
  validates :lastname, presence: true, length: {maximum: 50}
  validates :email, email: true, presence: true, length: {maximum: 50}
  validates :phone, numericality: true


  def name_capitalize
    self.name.capitalize
    #code
  end
  def lastname_capitalize
    self.lastname.capitalize
    #code
  end
end
