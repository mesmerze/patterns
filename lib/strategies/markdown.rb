require 'forwardable'

module Newsletter
  module Strategies
    class Markdown
      extend Forwardable

      def_delegators :@context, :header_content, :body_content

      def initialize(context)
        @context = context
      end

      def execute
        <<~HTMLORMARKDOWN
          **********
          # #{header_content}
          **********
          #{body_content}
          **********
        HTMLORMARKDOWN
      end
    end
  end
end
