Rails.application.routes.draw do
  get 'message', to: 'api/v1/messages#message'
end
