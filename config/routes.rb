Rails.application.routes.draw do
   root 'twilio#home'
   get '/twilio', to: 'twilio#index'        
   post '/twilio/create', to: 'twilio#create', as: 'create'
end
