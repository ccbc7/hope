class UsersController < ApplicationController
  def index
    @users = User.all
    @rooms = Room.all
    @reservations = Reservation.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "ユーザーを登録しました"
      redirect_to users_path
    else
      render new_user_path
    end
  end

  def show
    @room = Room.new
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "ユーザーを削除しました"
    redirect_to users_path
  end

  def user_to_all_rooms
    # binding.pry
    @rooms = Room.all
    @current_user = User.find(params[:format])
  end

  def reserved_rooms
    @current_user = User.find(params[:format])
    @reservations = Reservation.where(user_id: @current_user.id)
  end

  private
  def user_params
    params.require(:user).permit(:user_name)
  end
end
