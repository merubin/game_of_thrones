class CharactersController < ApplicationController

  def show
    @house=House.find(params[:house_id])
    @character=Character.find(params[:id])
  end


  def new
    @house=House.find(params[:house_id])
    @character = Character.new
  end #new

  def create
    @house=House.find(params[:house_id])
    @character = @house.characters.build(character_params) # thanks to andy

    @character.save
    redirect_to @character.house
  end

  def edit
      @character= Character.find(params[:id])
      @house=House.find(params[:house_id])

  end

  def update
    @house = House.find(params[:house_id])
    @character= @house.characters.find(params[:id])
    @character.update(character_params)
    redirect_to @house
  end

  def destroy
    @house = House.find(params[:house_id])
    @character= @house.characters.find(params[:id])
    @character.destroy

   redirect_to houses_path
  end


  private
  def character_params
    params.require(:character).permit(:name, :portrayed_by,:img_url, :seasons,
    :first_seen, :status,:house_id)
  end



end # CharactersController
