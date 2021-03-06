module ProgressiveRender
  module Rails
    # Shortcuts to object creation used in the view and controller
    module Helpers
      def progressive_request
        @rh ||= Rack::RequestHandler.new(request)
      end

      def progressive_renderer
        Rails::ViewRenderer.new(self)
      end
    end
  end
end
