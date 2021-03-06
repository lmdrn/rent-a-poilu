class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_booking, only: [:edit, :update, :destroy]


  def new
    @poilu = Poilu.find(params[:poilu_id])
    @booking = Booking.new
    @booking.user = current_user
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @poilu = Poilu.find(params[:poilu_id])
    @booking.poilu = @poilu
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to pay_path(@poilu, @booking)
    else
      render :new
    end
  end

  def pay
    @booking = Booking.find(params[:booking_id])
    @poilu = Poilu.find(params[:poilu_id])
    authorize @booking
  end

  def update
    @booking.update(booking_params)
    redirect_to user_path(@booking.user)
    authorize @booking
  end

  def edit
    @poilu = Poilu.find(params[:poilu_id])
  end

  def destroy
    id = @booking.user
    @booking.destroy
    redirect_to user_path(id)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :paid)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end


end
