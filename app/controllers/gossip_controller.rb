class GossipController < ApplicationController
  def show
    @id = params[:id]
    @gossips = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user: current_user)
    if @gossip.save
    redirect_to root_path
  else
    flash.now[:danger] = 'Invalid email/password combination'
    puts "$" * 60
    render 'new'
    puts "$" * 60
  end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(gossip_params)
    redirect_to gossip_path
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
  end

private 

  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end

end


