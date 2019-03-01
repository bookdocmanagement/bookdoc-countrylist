module Countrylist
  class Engine < ::Rails::Engine
    initializer 'countrylist.assets.precompile' do |app|
      app.config.assets.precompile << %w{ *.png }
    end
  end
end