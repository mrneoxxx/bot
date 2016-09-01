require 'NLP'

class Chat
  
  def self.nlp(session)
    @nlp ||= NLP.new(session)
  end
  
  def self.send_message(uuid)
    nlp(uuid).interactive
  end
end
