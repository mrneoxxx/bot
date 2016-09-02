# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   root to: "chat#index"
#   resources :chat
#   mount ActionCable.server => '/cable'
# end
Messenger::Engine.routes.draw do
  root to: "messenger#validate"
end
Rails.application.routes.draw do
  root to: "index#index"
#  resources :facebook
#  namespace :facebook do
#    root to: "#index"
#    mount Messenger::Engine
#  end
  mount Messenger::Engine, at: "/facebook"
  post 'facebook', to: "facebook#index"
  
  
#  post 'facebook/webhook', to: "messenger#webhook"
end
  