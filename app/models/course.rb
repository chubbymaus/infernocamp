class Course < ApplicationRecord
  validates_presence_of :title, :thumb_image, :description, :topic_id

  belongs_to :topic
  has_many :guides
end
