class CityController < ApplicationController
  def show
    @id = params[:id]
    @cities = City.all
    @gossips = Gossip.where(user:User.find_by(city:params[:id]))
  end
end
