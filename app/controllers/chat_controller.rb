class ChatController < WebsocketRails::BaseController
  def initialize_session
    # perform application setup here
    controller_store[:message_count] = 0
  end

  def create
    chat = Chat.new message
    if chat.save
      controller_store[:message_count] += 1
      WebsocketRails[:talk].trigger 'new', chat
      send_message :success, chat, :namespace => :chats
    else
      send_message :fail, chat, :namespace => :chats
    end
  end

  def close
    Chat.delete_all
  end



end