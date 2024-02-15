# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


player1 = Player.create(playername: "FergySenpai", player_role1: "Off-lane", player_role2: "Mage", player_role3: "ADC")
player2 = Player.create(playername: "Wesley", player_role1: "Tank", player_role2: "Healer", player_role3: "Off-lane")

character1 = Character.create(character_name: "Gazlowe", character_role: "Off-lane", role_tier: "D", thumbnail: "https://www.heroesprofile.com/includes/images/heroes/gazlowe.png")
character2 = Character.create(character_name: "Lili", character_role: "Healer", role_tier: "F", thumbnail: "https://www.heroesprofile.com/includes/images/heroes/lili.png")

PlayersCharacter.create(player: player1, character: character1)
PlayersCharacter.create(player: player2, character: character2)
