class Api::V1::MessagesController < ApplicationController
def message
    message = JSON.parse(params[:message])
      event = {message: message,
              timestamp: Time.now}
     Fluent::Logger::FluentLogger.open(nil, :host=>'localhost', :port=>24224)
     Fluent::Logger.post("debug", event)
     render json: 'Success'
  end
end
