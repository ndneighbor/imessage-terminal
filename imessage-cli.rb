require_relative 'lib/version'
require_relative 'lib/parser'
require_relative 'lib/sender'

module Imessage_cli

  begin

  ARGV.clear
  user_input = nil
  puts 'Ready to chat!'

  until user_input == '/exit'
    prompt = '> '
    print prompt
    user_input = gets.chomp
    send = Sender.new
    send.deliver(user_input)
  end
  rescue => err
    puts("Error: #{err}\nPlease try again.")

end
end

