class CreateGuides < ActiveRecord::Migration[5.1]
  def change
    create_table :guides do |t|
      t.string :title
      t.text :body
      t.string :video_link
      t.string :thumb_image
      t.integer :course_id

      t.timestamps
    end
  end
end
