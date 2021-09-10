class ChangeStudentGroupsToGroupStudents < ActiveRecord::Migration[6.1]
  def change
    rename_table :student_groups, :groups_students
  end
end
