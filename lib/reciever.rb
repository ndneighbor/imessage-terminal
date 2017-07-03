module Imessage_cli
# def index
class Reciever


  def get_message(contact)
  script = <<-SCRIPT
  on run argv
          set this_buddy to first item of argv
            using terms from application "Messages"
              on active chat message received with eventDescription
                  say eventDescription
              end active chat message received
            end using terms from
  end run
  SCRIPT
  `osascript -e '#{script}' '#{contact}'`
end
end
end



# using terms from application "Messages"
#     on message received this_message from this_buddy for this_chat
#         display dialog "test"
#     end message received
# end using terms from
