class AddSemToCourse < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :semester, :string
  end
end
