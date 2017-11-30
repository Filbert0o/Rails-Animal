class CreateCampsites < ActiveRecord::Migration[5.0]
  def change
    create_table :campsites do |t|
      t.string :name, null: false
      t.string :owner, null: false
      t.string :description 
    end
  end
end
