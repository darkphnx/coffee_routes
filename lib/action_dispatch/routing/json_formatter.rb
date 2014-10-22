# ActionDispatch::Routing::RoutesInspector says people shouldn't use
# it, but lets pretend we didn't see it.


module ActionDispatch
  module Routing
    class JSONFormatter

      def initialize
        @buffer = {}
      end

      # Serialize the buffer has as json
      def result
        ActiveSupport::JSON.encode(@buffer)
      end

      # No need for a title, we only want the data
      def section_title(title)
      end

      def section(routes)
        @buffer.merge! draw_section(routes)
      end

      # No need for a header, we only want data
      def header(routes)
      end

      # No routes will be represented by an empty object
      def no_routes
      end

      private

      def draw_section(routes)
        routes.each_with_object({}) do |r, hash|
          hash[r[:name]] = {:path => r[:path], :verb => r[:verb]}
        end
      end

    end
  end
end