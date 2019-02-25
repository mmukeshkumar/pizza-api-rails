Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  get 'v1/pizzas', action: :index, controller: 'pizza'
  post 'v1/pizzas', action: :create, controller: 'pizza'
  get 'v1/pizzas/:id', to: 'pizza#show'
  put 'v1/pizzas/:id', to: 'pizza#update'
  delete 'v1/pizzas/:id', to: 'pizza#delete'

  get 'v1/toppings', action: :index, controller: 'topping'
  get 'v1/toppings/:id', to: 'topping#show'

  get 'v1/promotions', action: :index, controller: 'promotion'
  post 'v1/promotions', action: :create, controller: 'promotions'
  get 'v1/promotions/:id', to: 'promotion#show'
  put 'v1/promotions/:id', to: 'promotion#update'
  delete 'v1/promotions/:id', to: 'promotion#delete'

end
