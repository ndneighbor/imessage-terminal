require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: example.rb [options]"

  opts.on("-c", "--contact", String, "Person to chat to") do
    options[:contact] = ARGV
    $contact = options[:contact]
  end
end.parse!
