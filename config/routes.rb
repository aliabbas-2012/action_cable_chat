Rails.application.routes.draw do
  get 'rooms/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'site#index'
  root 'rooms#show'
  post 'send-message',to: 'rooms#send_message'

  #web socket cabel in process

  mount ActionCable.server => '/cableq'
end
