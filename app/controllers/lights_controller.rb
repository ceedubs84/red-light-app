class LightsController < ApplicationController
  def index
    @lights = Unirest.get("https://data.cityofchicago.org/resource/twfh-866z.json").body
    render 'index.html.erb'
  end
end
