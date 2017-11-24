class Notice < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :title, presence: true, length: {maximum: 50}
  validates :contacts, presence: true, length: {maximum: 50}
  validates :content, presence: true, length: {maximum: 250}
end
