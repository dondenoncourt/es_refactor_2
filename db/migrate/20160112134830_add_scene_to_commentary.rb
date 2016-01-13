class AddSceneToCommentary < ActiveRecord::Migration
  def change
    add_column :commentaries, :scene_id, :integer
  end
end
