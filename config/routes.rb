VigetLiterallySpotsYou::Application.routes.draw do
  resources :updates, :only => [:new, :create, :index, :show]
  root 'updates#latest'

end
