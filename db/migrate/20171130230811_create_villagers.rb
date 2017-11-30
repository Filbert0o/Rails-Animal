class CreateVillagers < ActiveRecord::Migration[5.0]
  def change
    create_table :villagers do |t|
      t.string :name, null: false
      t.string :animal, null: false
      t.integer :happiness, null: false
      t.integer :campsite_id, null: false

      t.timestamps
    end
  end
end
