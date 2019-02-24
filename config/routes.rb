Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  get 'v1/pizzas', action: :index, controller: 'pizza'
  post 'v1/pizzas', action: :create, controller: 'pizza'
  get 'v1/pizzas/:id', to: 'pizza#show'
  put 'v1/pizzas/:id', to: 'pizza#update'

  get 'v1/toppings', action: :index, controller: 'topping'
  get 'v1/toppings/:id', to: 'topping#show'

  get 'v1/promotions', action: :index, controller: 'promotion'
  get 'v1/promotions/:id', to: 'promotion#show'

end
