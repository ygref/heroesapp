class PlayersCharacter < ApplicationRecord
  belongs_to :player
  belongs_to :character
end
