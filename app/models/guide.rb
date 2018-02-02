class Guide < ApplicationRecord

  validates_presence_of :title, :body, :video_link, :thumb_image, :order_id, :course_id
  belongs_to :course, optional: true

end
