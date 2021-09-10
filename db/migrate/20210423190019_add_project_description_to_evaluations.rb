class AddProjectDescriptionToEvaluations < ActiveRecord::Migration[6.1]
  def change
    add_column :evaluations, :project_description, :text
  end
end
