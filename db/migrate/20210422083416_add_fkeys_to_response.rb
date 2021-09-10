class AddFkeysToResponse < ActiveRecord::Migration[6.1]
  def change
    add_reference :responses, :evaluation, references: :responses, index: true
    add_foreign_key :responses, :evaluations, column: :evaluation_id

    add_reference :responses, :student, references: :responses, index: true
    add_foreign_key :responses, :students, column: :student_id
  end
end
