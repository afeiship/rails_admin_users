module RailsAdminUsers
  class SeedGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)

    def seed_user
      RailsAdminUsers::Engine.load_seed
    end
  end
end
