class AddFkeysToCourse < ActiveRecord::Migration[6.1]
  def change
    add_reference :courses, :instructor, references: :instructors, index: true
    add_foreign_key :courses, :instructors, column: :instructor_id
  end
end
