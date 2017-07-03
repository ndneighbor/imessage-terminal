require_relative 'lib/version'
require_relative 'lib/parser'
require_relative 'lib/sender'

module Imessage_cli

  begin
  contact = ARGV
  user_input = nil
  m = contact*","
  if m == "+1(786)6172017"
    puts "You are speaking to MJ!"
  else
    puts 'Ready to chat!'
  end
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


