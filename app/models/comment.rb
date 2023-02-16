class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gossip, optional: true
  has_many :likes
end
