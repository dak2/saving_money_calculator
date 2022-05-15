class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(current_user.id)
    @savings = @user.savings.includes(:category).page(params[:page])
    @savings_top_three = @user.savings.includes(:category).order(money: :desc).limit(3)
  end
end
