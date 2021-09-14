require 'forwardable'

module Newsletter
  module Strategies
    class Html
      extend Forwardable

      def_delegators :@context, :header_content, :body_content

      def initialize(context)
        @context = context
      end

      def execute
        <<~HTMLORMARKDOWN
          <h1>#{header_content}</h1>

          <p>#{body_content}</p>
        HTMLORMARKDOWN
      end
    end
  end
end
