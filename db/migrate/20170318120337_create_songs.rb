class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :language
      t.integer :lenght_in_min
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
