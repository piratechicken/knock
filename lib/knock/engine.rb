module Knock
  class Engine < ::Rails::Engine
    config.eager_load_paths += Dir["#{config.root}/lib/**/"]
    # https://github.com/nsarno/knock/issues/156
    if ::Rails.const_defined? 'Generators'
      config.eager_load_paths += Dir["#{config.root}/lib/**/"]
    else
      require_relative './authenticable'
    end
    isolate_namespace Knock
  end
end
