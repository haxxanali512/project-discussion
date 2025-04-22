class Project < ApplicationRecord
  has_many :activities, dependent: :destroy
  validates_presence_of :title, :description, :start_date, :due_date
end
