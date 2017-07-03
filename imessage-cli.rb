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
    puts m == "+1(786)6172017"
  end
  ARGV.clear


  until user_input == '/exit'
    prompt = '> '
    print prompt
    text = gets.chomp
    puts user_input
    send = Sender.new
    send.deliver_message(text, m)
  end
  rescue => err
    puts("Error: #{err}\nPlease try again.")
end

end


