class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :portrayed_by
      t.string :img_url
      t.string :seasons
      t.string :first_seen
      t.string :status
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
