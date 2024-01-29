class Character < ApplicationRecord
  has_many :players_characters
  has_many :players, through: :players_characters
end
