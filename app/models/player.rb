class Player < ApplicationRecord
  has_many :players_characters
  has_many :characters, through: :players_characters
end
