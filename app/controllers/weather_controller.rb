class WeatherController < ApplicationController
  def index
    city = params[:city] || "New York"
    api_key = ENV["OPEN_WEATHER_KEY"]
    # instead of this, get lat and lon from geo api using city value
    # https://openweathermap.org/api/geocoding-api
    lat = params[:lat] || "40.7128"
    lon = params[:lon] || "-74.0060"
    url = "http://api.openweathermap.org/data/3.0/weather?lat=#{lat}&lon=#{lon}&appid=#{api_key}"
  end
end
