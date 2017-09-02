class User < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, email: true,
            length: { maximum: 255 }, uniqueness: { case_sensitive: false }

  has_secure_password
end
