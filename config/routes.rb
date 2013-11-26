VigetLiterallySpotsYou::Application.routes.draw do
  resources :updates, :only => [:new, :create]

  root 'home#index'
end
