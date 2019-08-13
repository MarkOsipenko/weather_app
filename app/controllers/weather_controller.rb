class WeatherController < Sinatra::Base
  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end


  get "/" do
    temperature = ::Services::WheaterService.new(params[:city]).temperature
    haml :show, locals: { city: params[:city], temperature: temperature }
  end
end
