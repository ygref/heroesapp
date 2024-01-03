class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :playername
      t.string :password
      t.string :player_role1
      t.string :player_role2
      t.string :player_role3

      t.timestamps
    end
  end
end
