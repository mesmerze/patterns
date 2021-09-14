module Newsletter
  module Generators
    class GoodNews < Base
      def header_content
        'GOOD'
      end

      def body_content
        'NEWS'
      end
    end
  end
end
