class UsersController < ApplicationController

# before_action :logged_in_user, only: [:index, :edit, :update]
# before_action :correct_user,   only: [:edit, :update]

def index
   @users = User.paginate(page: params[:page])
end


  def show
    @users = User.all
 end

  def new
    @user = User.new
  end
end