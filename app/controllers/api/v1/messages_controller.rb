class Api::V1::MessagesController < ApplicationController
  def message
      message = params[:message]
      MessagesJob.perform_async(message)
      render json: "success"
  end
end
