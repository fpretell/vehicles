class GpsProcessJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    @ubication = Ubication.new(arguments.first)
    @ubication.save
  end
end
