class UserController < ApplicationController
  def index
  end
  
  def show
    @users = User.all
    @id = params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation], age: params[:age], first_name: params[:first_name], last_name: params[:last_name], description: params[:description], city: City.last) 
    if @user.save
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      puts "$" * 60
      render 'new'
      puts "$" * 60
    end
  end
end
