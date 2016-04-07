class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.decimal :price, precision: 12, scale: 3
      t.boolean :active

      t.references :users, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
