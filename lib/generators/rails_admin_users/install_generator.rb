module RailsAdminUsers
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)
    class_option :full, :type => :boolean
    desc "Configure necessary files to use RailsAdminUsers"

    def copy_views
      root = RailsAdminUsers.app_root
      directory "#{root}/app/views", "app/views"
    end

    def generate_model
      rake "rails_admin_users:install:migrations"
    end

    def add_gems
      gsub_file "Gemfile", "https://rubygems.org", "https://gems.ruby-china.com"
      gsub_file "Gemfile", "# gem 'bcrypt', '~> 3.1.7'", "gem 'bcrypt', '~> 3.1.7'"
      gem "kaminari"
    end

    def create_routes
      unless options[:full]
        route 'mount RailsAdminUsers::Engine => "/rails_admin_users"'
      end
    end
  end
end
