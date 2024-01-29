class PlayersCharactersController < ApplicationController


  def index
  @players_characters = PlayersCharacter.all
  render :index
  end
  
  def show
    @players_character = PlayersCharacter.find_by(id: params[:id])
    render :show
  end


end

