class MessagesJob
  include Sidekiq::Worker

  def perform(message)
    event = {
      message: message,
      timestamp: Time.now
    }
  end
end
