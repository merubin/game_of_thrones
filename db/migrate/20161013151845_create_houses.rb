class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :lord
      t.string :region
      t.string :description
      t.string :img_url

      t.timestamps
    end
  end
end
