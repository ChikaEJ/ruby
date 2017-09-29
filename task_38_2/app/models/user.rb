require 'bcrypt'
class User < ActiveRecord::Base

  validates :name, presence: true, length: { maximum: 50 }
  validates :lastname, presence: true, length: {maximum: 50}
  validates :email, presence: true,
            length: { maximum: 255 }, uniqueness: { case_sensitive: false }
  validates :adress, presence: true, length: {maximum: 255}
  validates :phone, presence: true, numericality: {only_integer: true}
  before_save 'capitalize_name_fields', 'capitalize_lastname_fields', 'downcase_email'


  def capitalize_name_fields
    self.name = name.capitalize
  end

  def capitalize_lastname_fields
    self.lastname = lastname.capitalize
  end

  def downcase_email
    self.email = email.downcase
  end

  has_secure_password
end
