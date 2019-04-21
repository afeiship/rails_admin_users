require_dependency "rails_admin_users/application_controller"

module RailsAdminUsers
  class UsersController < ApplicationController
    before_action :set_user, only: [:show]

    def index
      @items = User.page(params[:page]).per(params[:size])
    end

    def show
      @item
    end

    def create
      @item = User.new(allow_params)
      @item.save
    end

    def update
      @item.update allow_params if @item
    end

    def destroy
      @item.destroy if @item
    end

    private

    def allow_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end

    def set_user
      @item = User.find(params[:id])
    end
  end
end
