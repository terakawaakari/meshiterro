class UsersController < ApplicationController
  def show
    @user = User.find
    @post_images = @user.post_images.page(params[:page]).reverse_order
  end
end
