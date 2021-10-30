class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(cities_params)

    if @city.save
      redirect_to city_path(@city)
    else
      render :new
    end

  end

  def update
    @city = City.find(params[:id])

    if @city.update(cities_params)
      redirect_to city_path(@city)
    else
      render :edit
    end
  end

  def edit
    @city = City.find(params[:id])
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to cities_path
  end

  private

  def cities_params
    params.require(:city).permit(:name)
  end
end
