module Imessage_cli
# def index
class Sender

  def deliver_message(text, contact)
  script = <<-SCRIPT
  on run argv
          set toAddress to first item of argv
          set message to second item of argv
          tell application "Messages"
                  send message to buddy toAddress of (service 1 whose service type is iMessage)
          end tell
  end run
  SCRIPT
  `osascript -e '#{script}' '#{contact}' '#{user_input}'`
end

end
end
