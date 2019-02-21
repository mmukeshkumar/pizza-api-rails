class VarietyController < ApplicationController

  def index
    @varieties = Variety.all
    render json: @varieties
  end

  def show
    @variety = Variety.find(params[:id])
    render json: @variety
  end

end
