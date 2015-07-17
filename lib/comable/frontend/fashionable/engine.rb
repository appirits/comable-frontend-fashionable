module Comable
  module Frontend
    module Fashionable
      class Engine < ::Rails::Engine
        config.to_prepare do
          # refs: http://edgeguides.rubyonrails.org/engines.html#overriding-models-and-controllers
          Dir.glob(Engine.root.join('app/decorators/comable/*_decorator.rb')).each do |c|
            Rails.configuration.cache_classes ? require_dependency(c) : load(c)
          end
        end
      end
    end
  end
end
