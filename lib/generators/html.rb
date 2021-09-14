module Newsletter
  module Generators
    class Html < Base
      def header
        '<h1>header</h1>'
      end

      def body
        '<p>body</p>'
      end
    end
  end
end
