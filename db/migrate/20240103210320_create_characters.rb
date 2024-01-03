class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :character_name
      t.string :character_role
      t.string :role_tier
      t.string :thumbnail

      t.timestamps
    end
  end
end
