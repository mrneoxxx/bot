class ChatRoomsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_#{uuid}"
    Seek.create(uuid)
  end

  def unsubscribed
    Seek.remove(uuid)
  end

  def send_message(data)
    Chat.send_message(uuid, data)
  end
end
