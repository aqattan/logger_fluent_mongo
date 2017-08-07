class Api::V1::MessagesController < ApplicationController
  def receive_message
      message = params[:message]
      MessagesJob.perform_async(message)
      render json: "message sent #{message}"
  end
end
