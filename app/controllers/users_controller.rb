class UsersController < ApplicationController
  def index
    @users = User.order(:name)
  end

  def show
    
  end
end
