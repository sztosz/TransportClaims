class TransportService < ActiveRecord::Base
  validates :phone, :email, :name, presence: true
  validates :phone, numericality: { only_integer: true, greater_than: 0, less_than: 999_999_999 }
  validates :phone, format: /^\d{9}$/
end
