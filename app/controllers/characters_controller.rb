class CharactersController < ApplicationController
  def index
    @characters = Character.all
    render :index
  end
  def show
    @character = Character.find_by(id: params[:id])
    render :show
  end
  def create
    @character = Character.create(
    character_name: params[:character_name],
    character_role: params[:character_role],
    role_tier: params[:role_tier],
    )
    render :show
  end
  def destroy
    @character = Character.find_by(id: params[:id])
    @character.destroy
    render json: { message: "Character Deleted!"}
  end
end