require 'tilt/mustachejs'

if defined?(Rails) && Rails::VERSION::MAJOR == 3 && Rails::VERSION::MINOR >= 1
  class Tilt::MustacheJS::Railtie < Rails::Railtie
    initializer("tilt-mustachejs.register-tilt-mustachejs") do |app| 
      app.assets.register_engine ".mustache", Tilt::MustacheJS
    end
  end
end
