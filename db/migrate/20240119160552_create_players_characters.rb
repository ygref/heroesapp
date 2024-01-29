class CreatePlayersCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :players_characters do |t|
      t.references :player, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
