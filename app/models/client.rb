class Client < ApplicationRecord
  has_one :user, as: :meta, dependent: :destroy
  has_many :appointments
  has_many :therapists, :through => :appointments
  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :therapists
end
