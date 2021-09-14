module Newsletter
  module Generators
    class Markdown < Base
      def header
        '# Header'
      end

      def body
        'body'
      end
    end
  end
end
