require 'tilt'
require 'rails/engine'

module Myth
  module Rails
    class Engine < ::Rails::Engine
      initializer 'myth-rails.sprockets_engine', after: 'sprockets.environment', group: :all do |app|
        app.assets.register_engine '.myth', MythTemplate
      end
    end
  end
end
