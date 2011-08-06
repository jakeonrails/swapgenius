Swapgenius::Application.routes.draw do
  resources :offers

  resources :needs

  devise_for :users

  root :to => "needs#index"

end

