class AddSceneToPerson < ActiveRecord::Migration
  def change
    add_column :people, :scene_id, :integer
  end
end
