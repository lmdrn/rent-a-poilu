class PoilusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_poilu, only: [:show, :edit, :update, :destroy]
  def index
    @poilus = policy_scope(Poilu).order(created_at: :desc)
  end

  def new
    @poilu = Poilu.new
    authorize @poilu
  end

  def create
    @poilu = current_user.poilus.new(poilu_params)
    authorize @poilu
    if @poilu.save
      redirect_to @poilu
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
    authorize @poilu
  end

  def poilu_params
    params.require(:poilu).permit(:name, :description, :location, :photo)
  end
end
