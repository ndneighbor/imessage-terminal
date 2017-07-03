module Imessage_cli
# def index
class Sender

  def deliver(options = {text:nil, contact:nil})
    if options[:contact].empty?
      raise "You must specify at least one contact"
    end

    options[:contact].each do |contact|
      _deliver(options[:text], contact)
    end
  end

  def _deliver(text, contact)
      deliver_text(text, contact)
    end
  end

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
