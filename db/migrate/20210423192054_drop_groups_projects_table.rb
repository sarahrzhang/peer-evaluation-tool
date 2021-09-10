class DropGroupsProjectsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :groups_projects
  end
end
