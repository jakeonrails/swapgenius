Swapgenius::Application.routes.draw do
  devise_for :users

  resources :categories

  resources :offers

  resources :needs


  root :to => "needs#index"

end

