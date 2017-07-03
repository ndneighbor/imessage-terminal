module Imessage_ruby
# def index
class Sender
begin
  user_input = nil
  puts 'Ready to chat!'

  until user_input == '/exit'
    prompt = '> '
    print prompt
    user_input = gets.chomp
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
  `osascript -e '#{script}' '#{contact}' '#{text}'`
end
rescue => err
  puts("Error: #{err}\nPlease try again.")
  retry
end
