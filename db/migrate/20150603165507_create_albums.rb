class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :price
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
