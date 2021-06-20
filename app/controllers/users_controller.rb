class UsersController < ApplicationController
  def index
    @users = User.includes(:category).order(:name)
  end

  def show
    @user = User.includes(:category).find(params[:id])
  end
end
