class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(current_user.id)
    @savings_top_three = @user.savings.order(money: :desc).limit(3)
  end
end
