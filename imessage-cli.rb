require_relative 'lib/version'
require_relative 'lib/parser'
require_relative 'lib/sender'

module Imessage_cli

  begin
  contact = options[:contact]
  ARGV.clear
  user_input = nil
  puts 'Ready to chat!'

  until user_input == '/exit'
    prompt = '> '
    print prompt
    user_input = gets.chomp
    deliver_message(user_input, contact)
  end
  rescue => err
    puts("Error: #{err}\nPlease try again.")
  retry

end
end

