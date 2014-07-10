class ChatController < WebsocketRails::BaseController
  def initialize_session
    # perform application setup here
    controller_store[:message_count] = 0
  end

  def create
    chat = Chat.new message
    if chat.save
      send_message :create_success, chat, :namespace => :chat
    else
      send_message :create_fail, chat, :namespace => :chat
    end
  end

  def update_chat
    puts message if message[:date] == 'test'
  end
end