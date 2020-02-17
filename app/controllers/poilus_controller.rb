class PoilusController < ApplicationController
  def index
  end

  def new
    @poilu = Poilu.new
  end

  def create
    @user = User.find(current_user.id)
    @poilu = Poilu.new(poilu_params)
    @poilu.user = @user
    if @poilu.save
      redirect_to poilu_path(@poilu)
    else
      render :new
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

  private

  def poilu_params
    params.require(:poilu).permit(:name, :description, :location, :photo)
  end
end
