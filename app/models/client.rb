class Client < ActiveRecord::Base
  has_many :users
  has_one :address
  validates :phone, :email, presence: true
  validates :phone, numericality: { only_integer: true, greater_than: 0, less_than: 999_999_999 }
  validates :phone, format: /^\d{9}$/
  validates :email, format: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
end
