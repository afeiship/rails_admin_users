module RailsAdminUsers
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :require_login!
    include SessionsHelper

    def require_login!
      unless login?
        redirect_to :login
      end
    end
  end
end
