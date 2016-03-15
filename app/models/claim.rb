class Claim < ActiveRecord::Base
  belongs_to :operator
  belongs_to :client
  belongs_to :service
  belongs_to :location
  belongs_to :serviceman
  belongs_to :status
  has_many :comments
  has_many :waybills
  validates :client, :location, :valid, :closed, :stust, :description, presence: true
end
