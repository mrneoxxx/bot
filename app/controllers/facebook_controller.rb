class FacebookController < Messenger::MessengerController

  def index
    
    p '!!!!!!!!!!!!!!!!!!!!!!!'
    p fb_params
    p '!!!!!!!!!!!!!!!!!!!!!!!'
    
    if fb_params.first_entry.callback.message?
      Messenger::Client.send(
        Messenger::Request.new(
          Messenger::Elements::Text.new(text: "Echo: #{fb_params.first_entry.callback.text}"),
          fb_params.first_entry.sender_id
        )
      )
    end
    
    render nothing: true, status: 200
  end
  
#  def webhook
    #logic here
    
#    if fb_params.first_entry.callback.message?
#      Messenger::Client.send(
#        Messenger::Request.new(
#          Messenger::Elements::Text.new(text: "Echo: #{fb_params.first_entry.callback.text}"),
#          fb_params.first_entry.sender_id
#        )
#      )
#    end
#    render nothing: true, status: 200
#  end
  
end