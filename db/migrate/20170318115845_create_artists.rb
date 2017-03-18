class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :country
      t.boolean :alive
      t.string :type_of_music

      t.timestamps
    end
  end
end
