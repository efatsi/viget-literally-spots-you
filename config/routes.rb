VigetLiterallySpotsYou::Application.routes.draw do
  resources :updates, :only => [:new, :create, :index, :show]
  root 'updates#latest'

  get 'twilio/process_sms' => 'twilio#process_sms'
end
