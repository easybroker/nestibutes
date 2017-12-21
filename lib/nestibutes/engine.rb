module Nestibutes
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    isolate_namespace Nestibutes
  end
end
