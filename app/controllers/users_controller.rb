class UsersController < ApplicationController
	before_action :authenticae_user!
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end
  def favorites
  	@user = User.find(params[:id])
  end
end
