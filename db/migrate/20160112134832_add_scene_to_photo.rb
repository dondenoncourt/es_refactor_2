class AddSceneToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :scene_id, :integer
  end
end
