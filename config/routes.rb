Rails.application.routes.draw do
  post 'message', to: 'api/v1/messages#message'
end
