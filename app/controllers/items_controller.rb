class ItemsController < ApplicationController
  
  def create
    @user = current_user
    @item = @user.items.new(items_params)

    if @item.save
      flash[:notice] = "Item was saved successfully."
      redirect_to current_user
    else
      flash.now[:alert] = "Error creating item. Please try again."
      render :new
    end
  end
  
  def destroy
    @item = current_user.items.find(params[:id])
    
    if @item.destroy
      flash[:notice] = "Item completed and removed successfully."
    else
      flash[:error] = "There was an error removing the item. Please try again."
    end
    redirect_to current_user
  end
  
  private
  
  def items_params
        params.require(:item).permit(:name)
  end
end
