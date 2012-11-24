require 'asset_access_control/middleware'

module AssetAccessControl
  class Railtie < Rails::Railtie
    config.asset_access_control = ActiveSupport::OrderedOptions.new

    initializer "asset_access_control.configure_rails_initialization" do |app|
      config.asset_access_control.origin ||= "*"

      app.middleware.insert_before 'ActionDispatch::Static', AssetAccessControl::Middleware, config.asset_access_control.origin
    end
  end
end
