class ChangeStudentCoursesToCoursesStudents < ActiveRecord::Migration[6.1]
  def change
    rename_table :student_courses, :courses_students
  
  end
end
