class ApplicationController < ActionController::Base
    helper_method :current_user, :admin?
  
    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
  
    def admin?
      current_user&.admin
    end
  
    def require_login
      redirect_to login_path unless current_user
    end
  
    def require_admin
      redirect_to root_path, alert: "Acesso restrito." unless admin?
    end
  end
  