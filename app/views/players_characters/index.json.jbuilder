json.array! @players_characters, partial: "players_characters/players_character", as: :players_character



json.array! @players_characters do |players_character|
  json.extract! players_character, :id, :created_at, :updated_at

  json.player do
    json.extract! players_character.player, :id, :playername, :player_role1, :player_role2, :player_role3
  end

  json.character do
    json.extract! players_character.character, :id, :character_name, :character_role, :role_tier, :thumbnail
  end
end
