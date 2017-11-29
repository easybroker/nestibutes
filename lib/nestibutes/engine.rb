module Nestibutes
  class Engine < ::Rails::Engine
    isolate_namespace Nestibutes

    initializer 'nestibutes.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper Nestibutes::FormHelper
      end
    end
  end
end
