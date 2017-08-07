Rails.application.routes.draw do
  get 'receive_message', to: 'api/v1/messages#receive_message'
end
