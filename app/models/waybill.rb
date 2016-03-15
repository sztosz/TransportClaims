class Waybill < ActiveRecord::Base
  belongs_to :transport_service
  validates :number, :transport_service, presence: true
end
