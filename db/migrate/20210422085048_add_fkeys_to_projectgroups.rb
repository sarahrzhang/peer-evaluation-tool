class AddFkeysToProjectgroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :project_groups, :project, references: :project_groups, index: true
    add_foreign_key :project_groups, :projects, column: :project_id, null:false

    add_reference :project_groups, :group, references: :project_groups, index: true
    add_foreign_key :project_groups, :groups, column: :group_id, null:false
  end
end
