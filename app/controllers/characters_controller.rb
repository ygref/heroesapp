class CharactersController < ApplicationController
  def index
    @characters = Character.all
    render :index
    end
  def show
    @character = Character.find_by(id: params[:id])
    render :show
    end
end