# app.rb

require 'sinatra/base'

require 'forecast_io'
require 'geocoder'
require './app/controllers/weather_controller.rb'
require './app/services/weather_service.rb'

class WeatherApp < Sinatra::Base
  ForecastIO.api_key = ENV['FORECAST_KEY']
  use WeatherController
end
