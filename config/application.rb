require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Buddyup
  class Application < Rails::Application
    config.generators do |generate|
      generate.assets false
      generate.helper false
      generate.test_framework :test_unit, fixture: false
    end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end

  # class Application < Rails::Application
  #   config.autoload_once_paths << "#{application}/app/serializers"
  #   config.autoload_once_paths << "#{friends}/app/serializers"
  #   config.autoload_once_paths << "#{pages}/app/serializers"
  #   config.autoload_once_paths << "#{reservations}/app/serializers"
  #   config.autoload_once_paths << "#{root}/app/serializers"
  # end

end
