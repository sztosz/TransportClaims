class Waybill < ActiveRecord::Base
  belongs_to :transport_service
  belongs_to :claim
  validates :number, :transport_service, presence: true
end
