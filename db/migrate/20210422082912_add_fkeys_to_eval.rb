class AddFkeysToEval < ActiveRecord::Migration[6.1]
  def change
    add_reference :evaluations, :project, references: :evaluations, index: true
    add_foreign_key :evaluations, :projects, column: :project_id

    add_reference :evaluations, :student, references: :evaluations, index: true
    add_foreign_key :evaluations, :students, column: :student_id

    add_reference :evaluations, :group, references: :evaluations, index: true
    add_foreign_key :evaluations, :groups, column: :group_id
  end
end
