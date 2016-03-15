class Status < ActiveRecord::Base
  has_many :claims
  validates :name, presence: true
end
