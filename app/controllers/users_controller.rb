class UsersController < ApplicationController
  def index
    @users = User.paginate(:per_page => 10, :page => params[:page])
    respond_to do |format|
      format.html
      format.json { render json: @users }
      format.js
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    @user.save

    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update_attributes user_params
    redirect_to users_path
  end

  def complete
    @user = User.find params[:id]
    @user.complete!
    redirect_to users_path
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to users_path
    flash[:notice] = 'User successfully deleted'
  end

  def user_params
    params.require(:user).permit([
        :name, :role, :avatar
    ])
  end



end
