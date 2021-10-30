class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def create
    @listing = Listing.new(listings_params)

    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end

  end

  def update
    @listing = Listing.find(params[:id])

    if @listing.update(listings_params)
      redirect_to listing_path(@listing)
    else
      render :edit
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to listings_path
  end

  private

  def listings_params
    params.require(:listing).permit(:address, :listing_type, :title, :description, :price, :neighborhood_id, :host_id)
  end
end
