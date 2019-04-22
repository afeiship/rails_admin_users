module RailsAdminUsers
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)

    def copy_views
      root = RailsAdminUsers.app_root
      directory "#{root}/app/views", "app/views"
    end

    def generate_model
      rake "rails_admin_users:install:migrations"
    end

    def create_routes
      unless options[:full]
        route 'mount RailsAdminUsers::Engine => "/rails_admin_users"'
      end
    end
  end
end
