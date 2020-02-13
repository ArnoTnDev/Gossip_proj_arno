class HomeController < ApplicationController
    def index
        unless current_user
        flash[:danger] = "Please log in."
        redirect_to new_session_path
        else
            @gossips = Gossip.all
        end
    end
end