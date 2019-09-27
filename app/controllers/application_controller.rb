class ApplicationController < ActionController::Base
  before_action :set_current_user
  #共通化されたアクション

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  #ログインしてるユーザーを探す

  def authenticate_user
    if @current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/login")
    end
  end

  def forbid_login_user
    if @current_user
      flash[:notice] = "すでにログインしています"
      redirect_to("/posts/index")
    end
  end
  #ユーザー認証アクション
end
