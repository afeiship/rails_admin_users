require "rails_admin_users/engine"

module RailsAdminUsers
  # Your code goes here...
  def self.app_root
    root = RailsAdminUsers::Engine.root
    root.to_s
  end
end
