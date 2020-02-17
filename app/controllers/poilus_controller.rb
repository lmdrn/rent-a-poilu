class PoilusController < ApplicationController
  def index
    @poilus = Poilu.all
  end

  def new
  end

  def create
  end

  def show
    @poilu = Poilu.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
