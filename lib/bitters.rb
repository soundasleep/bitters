require "bitters/version"
require "bitters/generator"

# Copied from Bourbon.rb
module Bitters
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      require 'bourbon/engine'
    end

    # module Rails
    #   class Railtie < ::Rails::Railtie
    #     rake_tasks do
    #       load "tasks/install.rake"
    #     end
    #   end
    # end
  else
    bitters_path = File.expand_path("../../app/assets/stylesheets", __FILE__)
    ENV["SASS_PATH"] = [ENV["SASS_PATH"], bitters_path].compact.join(File::PATH_SEPARATOR)
  end
end
