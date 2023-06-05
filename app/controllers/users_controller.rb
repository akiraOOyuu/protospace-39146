class UsersController < ApplicationController
 
  def show
      @user = User.find(params[:id])
      @name = @user.name
      @user_id = @user.id
      @prototypes = @user.prototypes
 
 end
end
 

