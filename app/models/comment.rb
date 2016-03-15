class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :claim
  validates :text, presence: true
end
