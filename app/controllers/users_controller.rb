class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(current_user.id)
    @savings = @user.savings.page(params[:page])
    @savings_top_three = @user.savings.order(money: :desc).limit(3)
    # delegate to decorator
    savings_hash = @user.savings.left_joins(:category)
                        .group('categories.label')
                                .count
                                .map do |k,v|
                                  k = 'その他' if k.nil?
                                  { k => v }
                                end
    @savings_by_categories = {}.merge(*savings_hash)
  end
end
