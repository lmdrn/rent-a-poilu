class BookingsController < ApplicationController
  def new
    @poilu = Poilu.find(params[:poilu_id])
    @booking = Booking.new
    @booking.user = current_user
    authorize @booking
  end

  # def create
  # end

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
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to poilu_path(@booking.poilu_id)
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :paid)
  end

end
