class PromotionController < ApplicationController

  before_action :set_promotion, only: [:show, :update, :destroy]

  # GET /promotions
  def index
    @promotions = Promotion.all
    render json: @promotions
  end

  # GET /promotions/:id

  def show
    @promotion = Promotion.find(params[:id])
    render json: @promotion
  end

  # POST /promotions
  def create
    @promotion = Promotion.create!(promotion_add_update_params)
    json_response(@promotion, :created)
  end


  # PUT /promotions/:id
  def update
    @promotion.update(promotion_add_update_params)
    head :no_content
  end

  # DELETE /promotions/:id
  def destroy
    @promotion.destroy
    head :no_content
  end

  private

  def promotion_add_update_params
    # whitelist params
    params.permit(:name, :discount_percentage, :expiry_date)
  end

  def set_promotion
    @promotion = Promotion.find(params[:id])
  end



end
