class Address < ActiveRecord::Base
  belongs_to :client
  belongs_to :service
  validates :street, :town, :zip, presence: true
  validates :zip, numericality: { only_integer: true, greater_than: 0, less_than: 99_999 }
  validates :zip, format: /^\d{5}$/
end
