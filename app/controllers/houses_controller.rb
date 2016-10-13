class HousesController < ApplicationController

  def index
    @houses = House.all
  end #index

  def show

    @house = House.find(params[:id])

  end  #show

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)
    redirect_to @house
  end

  def new
    @house = House.new
  end #new

  def create
    @house = House.new(house_params)

    @house.save
    redirect_to @house
  end

  def destroy
    @house = House.find(params[:id])
    @house.characters.destroy_all
    @house.destroy
    redirect_to houses_path
  end



  private
  def house_params
    params.require(:house).permit(:name, :lord,:region, :description,:img_url)
  end


end # HousesController
