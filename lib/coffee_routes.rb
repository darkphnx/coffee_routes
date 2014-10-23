require "coffee_routes/version"
require 'coffee_routes/json_formatter'

module CoffeeRoutes
  module Rails
    class Engine < ::Rails::Engine
    end
  end

  def self.routes(controller=nil)
    all_routes = ::Rails.application.routes.routes
    inspector = ActionDispatch::Routing::RoutesInspector.new(all_routes)
    inspector.format(CoffeeRoutes::JSONFormatter.new, controller)
  end
end
