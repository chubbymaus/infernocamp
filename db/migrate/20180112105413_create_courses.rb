class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :thumb_image
      t.text :description
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
