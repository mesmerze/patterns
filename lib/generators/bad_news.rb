module Newsletter
  module Generators
    class BadNews < Base
      def header_content
        'BAD'
      end

      def body_content
        'NEWS'
      end
    end
  end
end
