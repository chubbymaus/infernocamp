class Topic < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title
  has_many :courses
end
