class CreateCommentaries < ActiveRecord::Migration
  def change
    create_table :commentaries do |t|
      t.string :content
      t.string :town
      t.string :region
      t.string :country
      t.decimal :lat, :precision => 64, :scale => 12
      t.decimal :lon, :precision => 64, :scale => 12

      t.timestamps
    end
  end
end
