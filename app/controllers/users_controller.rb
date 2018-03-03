class UsersController < ApplicationController
  attr_accessor :items
  
  def show
    @user = current_user
  end
  
  def destroy
    @item = current_user.items.find(params[:id])
    @item.destroy
    
    redirect_to current_user
  end
end
