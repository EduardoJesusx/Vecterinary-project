class SessionsController < ApplicationController
    skip_before_action :authenticate_user
    before_action :validate_user, only: [:new]

    def new
        if current_user.present?
            redirect_to controller => 'exams', :action => 'index'
        end
        render "login"
    end

    def create 
        @veterinary = Veterinary.where(email: params[:email]).first
        if @veterinary&.password_digest == Digest::SHA256.hexdigest(params[:password])
          session[:user_id] = @veterinary.id
          redirect_to :controller => 'exams', :action => 'index'
        else
            redirect_to root_url, notice: "User not found"
        end
      end     

    def index
        session[:type] = 'admin'
        session[:name] = 'Carlos Goias'
        redirect_to root_url
    end

    def destroy
        session.clear
        redirect_to root_url
    end

    private

    def validate_user
        redirect_to :controller => 'exams', :action => 'index' if current_user.present?
    end
end
