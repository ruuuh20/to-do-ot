class User < ApplicationRecord
  belongs_to :meta, polymorphic: true
  has_secure_password
  # has_many :activities
  has_many :appointments

  validates :name, :presence => true
end
