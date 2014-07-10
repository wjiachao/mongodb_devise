class ChatController < WebsocketRails::BaseController
  def initialize_session
    # perform application setup here
    @chat = 0
  end

  def create
    chat = Chat.new message
    if chat.save
      trigger_success {:message => 'i get the message!'}
    else
      trigger_failure {:message => 'i can not get the message!'}
    end
  end

  def update_chat
    puts message
  end
end