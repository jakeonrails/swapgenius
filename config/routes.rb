Swapgenius::Application.routes.draw do


  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_for :users do
    get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
  end

  resource :dashboard

  resources :categories

  resources :offers

  resources :needs

  root :to => "dashboards#show"

end

