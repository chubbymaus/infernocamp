class Guide < ApplicationRecord
  searchkick
  acts_as_votable
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title, :body, :video_link, :thumb_image, :order_id, :course_id
  belongs_to :course, optional: true

end
