class Activity < ApplicationRecord
  # belongs_to :user
  has_many :comments
  belongs_to :appointment


  def completed?
    self.status === true
  end
end
