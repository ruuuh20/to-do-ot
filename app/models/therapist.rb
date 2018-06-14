class Therapist < ApplicationRecord
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user
  has_many :appointments
  has_many :clients, :through => :appointments
  accepts_nested_attributes_for :clients
end
