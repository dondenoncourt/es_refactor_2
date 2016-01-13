class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :region
      t.string :statement
      t.date :submissionDate
      t.string :title
      t.text :reports, array:true, default: []
      t.string :town
      t.string :country
      t.decimal :lat, :precision => 64, :scale => 12
      t.decimal :lon, :precision => 64, :scale => 12

      t.timestamps
    end
  end
end
