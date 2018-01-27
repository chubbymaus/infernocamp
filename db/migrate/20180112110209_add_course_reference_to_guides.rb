class AddCourseReferenceToGuides < ActiveRecord::Migration[5.1]
  def change
    rename_column :guides, :course_id, :order_id
    add_reference :guides, :course, foreign_key: true
  end
end
