class ChangeProjectGroupsToGroupsProjects < ActiveRecord::Migration[6.1]
  def change
    rename_table :project_groups, :groups_projects
  end
end
