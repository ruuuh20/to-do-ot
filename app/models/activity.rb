class Activity < ApplicationRecord
  # belongs_to :user
  has_many :comments

  def completed?
    self.status === true
  end
end
