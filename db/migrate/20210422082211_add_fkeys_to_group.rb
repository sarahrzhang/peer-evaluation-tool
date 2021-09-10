class AddFkeysToGroup < ActiveRecord::Migration[6.1]
  def change
    add_reference :groups, :course, references: :courses, index: true
    add_foreign_key :groups, :courses, column: :course_id
  end
end
