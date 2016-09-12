require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Quantumid
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/lib)
    config.assets.paths << Rails.root.join('vendor', 'assets', 'components')
  end
end
