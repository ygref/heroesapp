
json.players_character do
  json.extract! @players_character, :id, :created_at, :updated_at

  json.player do
    json.extract! @players_character.player, :id, :playername, :player_role1, :player_role2, :player_role3, :created_at, :updated_at
  end

  json.character do
    json.extract! @players_character.character, :id, :character_name, :character_role, :role_tier, :thumbnail, :created_at, :updated_at
  end
end
