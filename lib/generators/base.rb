module Newsletter
  module Generators
    class Base
      def render
        <<~HTMLORMARKDOWN
          #{header}

          #{body}
        HTMLORMARKDOWN
      end

      def header
        raise NotImplementedError
      end

      def body
        raise NotImplementedError
      end
    end
  end
end
