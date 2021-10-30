class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end

  def new
    @neighborhood = Neighborhood.new
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
  end

  def create
    @neighborhood = Neighborhood.new(neighborhoods_params)

    if @neighborhood.save
      redirect_to neighborhood_path(@neighborhood)
    else
      render :new
    end

  end

  def update
    @neighborhood = Neighborhood.find(params[:id])

    if @neighborhood.update(neighborhoods_params)
      redirect_to neighborhood_path(@neighborhood)
    else
      render :edit
    end
  end

  def edit
    @neighborhood = Neighborhood.find(params[:id])
  end

  def destroy
    @neighborhood = Neighborhood.find(params[:id])
    @neighborhood.destroy
    redirect_to neighborhoods_path
  end

  private

  def neighborhoods_params
    params.require(:neighborhood).permit(:name, :city_id)
  end
end
