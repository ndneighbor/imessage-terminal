require_relative 'lib/version'
require_relative 'lib/parser'
require_relative 'lib/sender'

module Imessage_cli

  begin
  contact = ARGV
  user_input = nil
  m = contact*","
  puts 'Ready to chat!'
  ARGV.clear


  until user_input == '/exit'
    prompt = '> '
    print prompt
    text = gets.chomp
    send = Sender.new
    send.deliver_message(text, m)

    
  end
  rescue => err
    puts("Error: #{err}\nPlease try again.")
end

end


