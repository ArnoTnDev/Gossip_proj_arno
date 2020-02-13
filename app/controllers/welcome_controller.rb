class WelcomeController < ApplicationController
  def user
    @user_name = params[:name]
    @gossips = Gossip.all
  end
end
