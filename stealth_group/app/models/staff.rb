class Staff < ApplicationRecord
  belongs_to :department
  validates :name, presence: true, length: {maximum: 50}
  validates :lastname, length: {maximum: 50}
  validates :email, presence: true,
            length: { maximum: 255 }, uniqueness: { case_sensitive: false }
  validates :adress, presence: true, length: {maximum: 255}
  validates :phone, presence: true, uniqueness: true, numericality: {only_integer: true}

  before_create do
    self.name = name.capitalize if name.blank?
    self.lastname = lastname.capitalize if lastname.blank?
  end

=begin
  before_save 'capitalize_name_fields', 'capitalize_lastname_fields', 'downcase_email'

  private

  def capitalize_name_fields
    self.name = name.capitalize
  end

  def capitalize_lastname_fields
    self.lastname = lastname.capitalize
  end
  def downcase_email
    self.email = email.downcase
  end
=end
end
