module Services
  class WheaterService
    attr_reader :temperature

    def initialize(city)
      if city
        data = ::Geocoder.search(city)

        latitude, longitude = data.first.coordinates

        @temperature = ::ForecastIO.forecast(latitude, longitude, params: { units: 'uk' }).currently.apparentTemperature
      else
        @temperature = 'infinity'
      end
    end
  end
end
