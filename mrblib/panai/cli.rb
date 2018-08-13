module Panai
  class Cli
    class << self
      def stat(args)
        num = args[1] || 3
        puts NetworkAnalyzer.collect(args[0] || "lo", num.to_i).to_json
      end
    end
  end
end
