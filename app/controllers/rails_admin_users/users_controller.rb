require_dependency "rails_admin_users/application_controller"

module RailsAdminUsers
  class UsersController < ApplicationController
    before_action :set_user, only: [:show]

    def index
      @users = User.page(params[:page]).per(params[:size])
    end

    def show
      @user
    end

    def create
      @user = User.new(allow_params)
      @user.save
    end

    def update
      @user.update allow_params if @user
    end

    def destroy
      @user.destroy if @user
    end

    private

    def allow_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

    def set_user
      @user = User.find(params[:id])
    end
  end
end
