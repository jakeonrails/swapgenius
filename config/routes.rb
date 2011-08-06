Swapgenius::Application.routes.draw do

  devise_for :users

  resource :dashboard

  resources :categories

  resources :offers

  resources :needs

  root :to => "dashboards#show"

end

