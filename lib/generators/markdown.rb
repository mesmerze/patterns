module Newsletter
  module Generators
    class Markdown < Newsletter::Generator
      def header
        '# Header'
      end

      def body
        'body'
      end
    end
  end
end
