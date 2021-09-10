class CreateResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :responses do |t|
      t.integer :leadership_score
      t.integer :communication_score
      t.integer :contribution_score
      t.integer :quality_score
      t.integer :skills_score
      t.text :comment

      t.timestamps
    end
  end
end
