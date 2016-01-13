class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :town
      t.string :region
      t.string :country
      t.decimal :lat, :precision => 64, :scale => 12
      t.decimal :lon, :precision => 64, :scale => 12
      t.date :date
      t.text :urls, array:true, default: []

      t.timestamps
    end
  end
end
