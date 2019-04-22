module RailsAdminUsers
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)

    def copy_views
      root = RailsAdminUsers.app_root
      directory "#{root}/app/views", "app/views"
    end
  end
end
