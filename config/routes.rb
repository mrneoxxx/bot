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
  mount Messenger::Engine, at: "/facebook"
  post 'facebook', to: "facebook#index"

end
  