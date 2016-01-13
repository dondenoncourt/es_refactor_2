class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :town
      t.string :region
      t.string :country
      t.decimal :lat, :precision => 64, :scale => 12
      t.decimal :lon, :precision => 64, :scale => 12
      t.string :name

      t.timestamps
    end
  end
end
