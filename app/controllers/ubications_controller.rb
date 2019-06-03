class UbicationsController < ApplicationController
  before_action :set_ubication, only: [:show, :update, :destroy]

  # GET /ubications
  def index
    @ubications = Ubication.all

    render json: @ubications
  end

  # GET /ubications/1
  def show
    render json: @ubication
  end

  # POST /ubications
  def create
    @ubication = Ubication.new(ubication_params)

    if @ubication.save
      render json: @ubication, status: :created, location: @ubication
    else
      render json: @ubication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ubications/1
  def update
    if @ubication.update(ubication_params)
      render json: @ubication
    else
      render json: @ubication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ubications/1
  def destroy
    @ubication.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ubication
      @ubication = Ubication.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ubication_params
      params.require(:ubication).permit(:latitude, :longitude, :sent_at, :vehicle_identifier)
    end
end
