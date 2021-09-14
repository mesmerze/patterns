module Newsletter
  module Generators
    class Html < Newsletter::Generator
      def header
        '<h1>header</h1>'
      end

      def body
        '<p>body</p>'
      end
    end
  end
end
