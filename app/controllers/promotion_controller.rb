class PromotionController < ApplicationController

  def index
    @promotions = Promotion.all
    render json: @promotions
  end

  def show
    @promotion = Promotion.find(params[:id])
    render json: @promotion
  end

end
