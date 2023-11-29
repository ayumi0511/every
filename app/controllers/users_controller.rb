class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

    def index
      
    end
  
    def show
      @nickname = current_user.nickname
      @tweets = current_user.tweets
    end
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to @user
      else
        render 'new'
      end
    end
  
    private

  def user_params
    params.require(:user).permit(:nick_name, :first_name, :last_name)
  end
end
