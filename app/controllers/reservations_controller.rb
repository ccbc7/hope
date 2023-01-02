class ReservationsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash[:notice] = "予約が完了しました"
      redirect_to users_index_path
    else
      flash[:notice] = "予約に失敗しました"
      render room_path
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def confirm
    @reservation = Reservation.new
    @current_user = User.find(params[:current_user_id])
    @room = Room.find(params[:id])
  end

  private
  def reservation_params
  params.require(:reservation).permit(:user_id,:room_id, :room_name, :charge, :people)
  end
end
