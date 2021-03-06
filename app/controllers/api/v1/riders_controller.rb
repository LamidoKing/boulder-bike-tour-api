class Api::V1::RidersController < ApplicationController
  before_action :set_rider, only: [:show, :update, :destroy]
  before_action :authorized, only: [:create, :update, :destroy]

  # GET /api/v1/riders
  def index
    @riders = Rider.all

    render json: @riders, include: [:photo]
  end

  # GET /api/v1/riders/1
  def show
    render json: @rider, include: [:photo]
  end

  # POST /api/v1/riders
  def create
    @rider = current_admin.riders.build(rider_params)

    if @rider.save

      render json: @rider, include: [:photo], status: :created
    else
      render json: @rider.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/riders/1
  def update

    if @rider.update(rider_params)
      
      render json: @rider, include: [:photo]
    else
      render json: @rider.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/riders/1
  def destroy
    @rider.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rider
      @rider = Rider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rider_params
      params.fetch(:rider, {}).permit(:first_name, :last_name, :city_of_origin, :state_of_origin, :latitude, :longitude, :photo)
    end
end
