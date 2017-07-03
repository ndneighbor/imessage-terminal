require 'optparse'
require 'ostruct'

module Imessage_cli
  class Parser
    class << self
      def parse(options)
        OpenStruct.new.tap do |args|
          args.contact = nil
          args.verbose = false

          opt_parser(args).parse!(options)
        end
      end

      private

      def opt_parser(args)
        OptionParser.new do |opts|
          opts.banner = "Usage: imessage-ruby [options]"

          opts.separator ""
          opts.separator "Specific options:"

          opts.on("-c", "--contact [TEXT]", String, "Deliver message to your CONTACT") do |contact|
            args.contact = contact
          end

          opts.separator ""
          opts.separator "Common options:"

          opts.on("-h", "--help", "Prints this help") do
            puts opts
            exit
          end

          opts.on_tail("--version", "Show version") do
            puts "imessage v#{Imessage_cli::VERSION}"
            exit
          end
        end
      end
    end
  end
end
