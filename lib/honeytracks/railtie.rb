module HoneyTracks
  class Railtie < Rails::Railtie
    initializer "setup HoneyTracks" do
      config_file = Rails.root.join("config", "honey_tracks.yml")
      if config_file.file?
        HoneyTracks::Config.config = YAML.load(ERB.new(config_file.read).result)[Rails.env]
      end
    end

    initializer "warn when configuration is missing" do
      config.after_initialize do
        unless Rails.root.join("config", "honey_tracks.yml").file?
          puts "\nHoneyTracks config not found. Create a config file at: config/honey_tracks.yml"
        end
      end
    end
  end
end