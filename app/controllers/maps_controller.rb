class MapsController < ActionController::Base
  layout "aplication"
  def show
    begin
      # variables para centrar mapa (podrian ser obtenidos desde la bd)
      @zoom=11
      @center={
          :lat=>-33.4349476,
          :lng=>-70.6888648
        }.to_json.html_safe

      # agrupamos las ubicaciones por vehicle_identifier
      @auxFilter=[];
      Ubication.all.group_by{ |ubic| ubic[:vehicle_identifier] }
      .each do |_,b|
        # ordenamos por id y tomamos el ultimo elemento para obtener el mas reciente
        @auxFilter.push b.sort_by { |t| t[:id] }.last;
      end
      @ubicationsFilter = @auxFilter.to_json.html_safe
      render 'maps/show'
    rescue
      @message='Ocurrió un error. Contactar a Soporte.'
      render html: @message
    end

  end

end
