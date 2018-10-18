class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) #データベースからidを検索する
  end
end
