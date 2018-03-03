class UsersController < ApplicationController
  attr_accessor :items
  
  def show
    @user = current_user
  end
  
  def destroy
    @item = current_user.items.find(params[:id])
    @item.destroy
    
    if @item.destroy
      flash[:notice] = "Item completed and removed successfully."
    else
      flash[:error] = "There was an error removing the item. Please try again."
    end
    redirect_to current_user
  end
end
