class UbicationsController < ActionController::API

  # POST
  def create
    begin
      @ubication = Ubication.new(ubication_params)
      # delegamos la tarea
      GpsProcessJob.perform_later JSON.parse(ubication_params.to_json)
    rescue
      error response
      render status: 500, json: {"error" => true}.to_json
    end
    success response
    render status: 200, json: {"response" => 'ok' }.to_json
  end

  private

    def ubication_params
      params.require(:ubication).permit(:latitude, :longitude, :sent_at, :vehicle_identifier)
    end

end
