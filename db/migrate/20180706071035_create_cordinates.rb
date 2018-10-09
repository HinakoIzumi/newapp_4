class CreateCordinates < ActiveRecord::Migration[5.0]
  def change
    create_table :cordinates do |t|
      t.references :user, foreign_key: true
      t.integer :item1
      t.integer :item2
      t.integer :item3
      t.integer :item4
      t.integer :item5
      t.integer :item6
      t.integer :item7
      t.integer :item8
      t.integer :item9
      t.integer :item10

      t.timestamps
    end
  end
end
