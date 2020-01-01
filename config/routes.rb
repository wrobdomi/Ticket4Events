Rails.application.routes.draw do

  root :to => "pages#home"

  resources :events, :only => [:index, :new, :create, :show]
  # get 'events/index'
  # get 'events/new'
  # get 'events/create'
  # get 'events', to: 'events#index'
  # post 'events', to: 'events#create'
  # get 'events/:id', to: 'events#show'
  
  
  resources :tickets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
