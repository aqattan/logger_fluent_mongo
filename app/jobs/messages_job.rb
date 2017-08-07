class MessagesJob
  include Sidekiq::Worker

  def perform(message)
    event = {
      message: message,
      timestamp: Time.now
    }
    puts "message sent #{event}"
  end
end
