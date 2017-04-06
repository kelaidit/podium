class ApplicationController < ActionController::Base
  before_action :set_current_user #defini en private à la fin du controleur
  protect_from_forgery with: :exception


    private
    def set_current_user
      if session[:user_id] then
        @current_user=User.find(session[:user_id])
      end
    end
  
  
  end
