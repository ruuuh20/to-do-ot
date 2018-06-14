class Appointment < ApplicationRecord
  belongs_to :client
  belongs_to :therapist
  belongs_to :user
  has_many :activities
end
