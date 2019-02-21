Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
    get 'v1/varieties', action: :index, controller: 'variety'
    get 'v1/varieties/:id', to: 'variety#show'
    get 'v1/promotions', action: :index, controller: 'promotion'
    get 'v1/promotions/:id', to: 'promotion#show'
    get 'v1/toppings', action: :index, controller: 'topping'
    get 'v1/toppings/:id', to: 'topping#show'
end
