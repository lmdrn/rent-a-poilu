class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    authorize @user
    @poilus = @user.poilus
    @bookings = @user.bookings
  end

end
