require_relative "boot"

require "rails/all"
Bundler.require(*Rails.groups)

module BroadwayMovies
  class Application < Rails::Application
    config.load_defaults 7.0

    config.before_configuration do
      env_file = Rails.root.join("config", "application.yml").to_s
      puts "******************************* HERE *******************************************************"
      puts "Loading config vars from #{env_file}"
      puts "******************************* END HERE ***************************************************"
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value
      end if File.exist?(env_file)
    end
  end
end
