require_dependency "rails_admin_users/application_controller"

module RailsAdminUsers
  class SessionsController < ApplicationController
    skip_before_action :require_login!

    def new
    end

    def create
      user = User.find_by_username(params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to :root
      else
        render :new
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to :login
    end
  end
end
