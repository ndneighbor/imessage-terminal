# def index
  begin
    user_input = nil
    puts "Ready to chat!"
    until (user_input == "/exit")
      prompt = "> " 
      print prompt 
      user_input = gets.chomp
    end
  rescue => err
    puts( "Error: #{err}\nPlease try again." )
    retry
  end