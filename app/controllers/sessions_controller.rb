class SessionsController < ApplicationController
    def index
        session[:type] = 'admin'
        session[:name] = 'Carlos Goias'
        redirect_to root_url
    end

    def destroy
        session.clear
        redirect_to root_url
    end
end
