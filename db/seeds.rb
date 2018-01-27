3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

5.times do |course|
  Course.create!(
    title: "Course: #{course}",
    description: "Ut enim ad minim veniam",
    thumb_image: "http://via.placeholder.com/300x150",
    topic_id: Topic.last.id
  )
end


8.times do | lesson |
  Guide.create!(
    title: "guide: #{lesson}",
    
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    video_link: "http://placehold.it/600x400",
    thumb_image: "http://via.placeholder.com/300x150",
    order_id: '#{lesson}',
    course_id: Course.last.id
  )
end