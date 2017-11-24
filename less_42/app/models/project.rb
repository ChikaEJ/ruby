class Project < ApplicationRecord
  belongs_to :programmer
  belongs_to :client
end
