class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  
  rescue_from SecurityError do |exception|
    redirect_to root_url, notice: '管理者画面へのアクセス権限がありません。'
  end
    
  
    
  protected
    
    def authenticate_admin_user!
     raise SecurityError unless current_user.try(:admin?)
    end
  
  
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:sign_in, keys:[:email, :password])
        devise_parameter_sanitizer.permit(:account_apdate, keys: [:name, :email, :password, :current_password, :avatar])
    end
    
end
