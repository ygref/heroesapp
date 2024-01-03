# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Player.create(playername: "FergySenpai", password: "FergySenpai1", player_role1: "Off-lane", player_role2: "Mage", player_role3: "ADC")
Player.create(playername: "Administrator", password: "Administrator1", player_role1: "Tank", player_role2: "Healer", player_role3: "Off-lane")

Character.create(character_name: "Gazlowe", character_role: "Off-lane", role_tier: "D", thumbnail: "default_image")
Character.create(character_name: "Lili", character_role: "Healer", role_tier: "F", thumbnail: "default_image")