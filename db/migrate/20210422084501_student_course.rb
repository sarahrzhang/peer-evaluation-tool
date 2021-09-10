class StudentCourse < ActiveRecord::Migration[6.1]
  def change
    create_table :student_courses, id: false do |t|
      t.integer :course_id, null: false
      t.integer :student_id, null: false

    end
  end
end
