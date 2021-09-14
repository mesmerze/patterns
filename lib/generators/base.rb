module Newsletter
  module Generators
    class Base
      attr_reader :strategy

      def initialize(strategy:)
        @strategy = strategy
      end

      def render
        Newsletter::Strategies
          .const_get(strategy)
          .new(self)
          .execute
      end
    end
  end
end
