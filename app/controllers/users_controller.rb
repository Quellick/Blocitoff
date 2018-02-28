class UsersController < ApplicationController
  attr_accessor :items
  
  def show
    @user = current_user
  end
end
