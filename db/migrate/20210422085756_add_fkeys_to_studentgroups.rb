class AddFkeysToStudentgroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :student_groups, :group, references: :student_groups, index: true
    add_foreign_key :student_groups, :groups, column: :group_id, null:false

    add_reference :student_groups, :student, references: :student_groups, index: true
    add_foreign_key :student_groups, :students, column: :student_id, null:false
  end
  
end
