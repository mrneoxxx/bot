class FacebookController < Messenger::MessengerController

  def index
    
    p '!!!!!!!!!!!!!!!!!!!!!!!'
    p fb_params
    p '!!!!!!!!!!!!!!!!!!!!!!!'
    p fb_params.first_entry.callback
    p '!!!!!!!!!!!!!!!!!!!!!!!'
    p fb_params.first_entry
    p '!!!!!!!!!!!!!!!!!!!!!!!'
    
    if fb_params.first_entry.callback.message?
      Messenger::Client.send(
        Messenger::Request.new(
          Messenger::Elements::Text.new(text: "Echo: #{fb_params.first_entry.callback.text}"),
          fb_params.first_entry.sender_id
        )
      )
    end

    head :ok
  end
  
end