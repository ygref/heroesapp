class PlayersController < ApplicationController
  def index
    @players = Player.all
    render :index
end

def show
  @player = Player.find_by(id: params[:id])
  render :show
end

def create
  @player = Player.create(
    playername: params[:playername],
    player_role1: params[:player_role1],
    player_role2: params[:player_role2],
    player_role3: params[:player_role3],

  )
render :show
end
end