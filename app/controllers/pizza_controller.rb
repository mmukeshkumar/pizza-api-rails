class PizzaController < ApplicationController

  before_action :set_pizza, only: [:show, :update, :destroy]

  # GET /pizzas
  def index
    @pizzas = Pizza.all
    render json: @pizzas
  end

  # POST /pizzas
  def create
    @todo = Pizza.create!(pizza_add_update_params)
    json_response(@todo, :created)
  end

  # GET /pizzas/:id
  def show
    @pizza = Pizza.find(params[:id])
    render json: @pizza
  end

  # PUT /pizzas/:id
  def update
    @pizza.update(pizza_add_update_params)
    head :no_content
  end

  # DELETE /pizzas/:id
  def destroy
    @pizza.destroy
    head :no_content
  end

  private

  def pizza_add_update_params
    # whitelist params
    params.permit(:name, :price, :image_url, :description)
  end

  def set_pizza
    @pizza = Pizza.find(params[:id])
  end

end
