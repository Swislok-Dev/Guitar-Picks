class GuitarsController < ApplicationController

  before_action :get_guitar, only: [:destroy]
  
  def index
    guitars = Guitar.all
    if guitars.present?
      render json: guitars, status: 200
    else
      render json: { mesage: "No guitars found"}, status: 404
    end
  end

  def create
    @guitar = Guitar.create(guitar_params)
    render json: @guitar, status: 200
  end

  def show 
    guitar = Guitar.find_by_id(params[:id])
    if guitar
      render json: guitar, status: 200
    else
      render json: { message: "No guitar found" }, status: 404
    end
  end

  def destroy
    @guitar.destroy
    render json: { message: "Guitar has been deleted" }, status: 200
  end

  private
  
  def guitar_params
    params.require(:guitar).permit(:brand, :model, :style, :image_url, :user_id)
  end

  def get_guitar
    @guitar = Guitar.find_by(id: params[:id])
  end

end
