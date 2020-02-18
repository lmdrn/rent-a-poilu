class PoilusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_poilu, only: [:show, :edit, :update, :destroy]
  def index
    @poilus = Poilu.all
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
    @poilu.update(poilu_params)

    redirect_to poilu_path(@poilu)
  end

  def destroy
    @poilu.destroy
    redirect_to poilus_path
  end

  private

  def set_poilu
    @poilu = Poilu.find(params[:id])
  end

  def poilu_params
    params.require(:poilu).permit(:name, :description, :location, :photo)
  end
end
