class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :message ,:image])
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :message ,:image])
  end

  def redirect_root
    if @current_user == nil
     flash[:notice] = "ログインが必要です"
     redirect_to root_path
    end
  end

  
  

end
