json.extract! course, :id, :title, :thumb_image, :description, :topic_id, :created_at, :updated_at
json.url course_url(course, format: :json)
