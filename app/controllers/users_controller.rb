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

  def create
   @user = User.new(user_params)    # Not the final implementation!
   if @user.save
     flash[:success] = "Welcome to the Sample App!"
     redirect_to @user
   else
     render 'new'
   end
 end

   private

   def user_params
     params.require(:user).permit(:name, :email)
   end

end
