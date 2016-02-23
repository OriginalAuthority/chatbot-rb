require_relative '../plugin'

class Thing
  include Chatbot::Plugin

  match /^master/, :use_prefix => false
  
  # @param [User] user
  def execute(user)
    if user.name.eql? 'Original Authority'
      @client.send_msg 'Hi Master, How is it going today?'
    else
      @client.send_msg "#{user.name}: My master is [[User:Original Authority|Original Authority]], check him out, his is one cool dude!"
    end
  end
end
