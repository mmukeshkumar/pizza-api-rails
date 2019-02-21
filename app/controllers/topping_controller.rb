class ToppingController < ApplicationController

  def index
    @toppings = Topping.all
    render json: @toppings
  end

  def show
    @topping = Topping.find(params[:id])
    render json: @topping
  end
end
