class ApplicationController < ActionController::Base

    before_action :authenticate_user

    helper_method :current_user


    private
  
    def current_user
      @current_user ||= Veterinary.find_by(id: session[:user_id])
    end

    def authenticate_user
      redirect_to root_url unless session[:user_id]
    end

    def admin_permission
      unless Veterinary.find_by_id(session[:user_id]).admin == true
        redirect_to root_url
    end
  end
end
