class ItemsController < ApplicationController
  def create
    @user = current_user
    @item = @user.items.new(items_param)

    if @item.save
      flash[:notice] = "Item was saved successfully."
      redirect_to current_user
    else
      flash.now[:alert] = "Error creating item. Please try again."
      render :new
    end
  end
end
