class UsersController < ApplicationController
  
  #set_current_user defini dans ApplicationController
  
  def home
    
  end
  
    
  def login
    session[:test] = "Valeur de test"  #subiste d'une page à l'autre
  end
  
  def logout
     session[:user_id]=nil
      redirect_to "/users/home"
  end
  
  def check
    @current_user = User.where(name: params[:name],password: params[:password]).first
    if @current_user then
      flash[:info]="Bienvenue"
       session[:user_id]=@current_user.id
      redirect_to "/users/home"
    else
      flash[:info]="Erreur de connexion"
      #redirect_to "users/login"
      redirect_to "/users/login"
    end
  end
  
  

  
end
