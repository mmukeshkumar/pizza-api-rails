class PizzaController < ApplicationController

  def show_varieties
    @varieties = Variety.all
    render json: @varieties
  end

  def show_promotions
    @promotions = Promotion.all
    render json: @promotions
  end
end
