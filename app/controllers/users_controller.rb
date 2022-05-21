class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :search_savings, only: [:show]

  def show
    @savings = @q.result.page(params[:page])
  end

  private

  def search_savings
    @q = current_user.savings.includes(:category).ransack(params[:q])
    @q.sorts = 'id desc' if @q.sorts.empty?
  end
end
