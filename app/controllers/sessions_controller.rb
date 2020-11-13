class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      #redirect_to welcome_main_path, notice: 'Sesión Iniciada'
      patient = Patient.find_by_user_id(current_user.id)
      return redirect_to url_for(:controller => :welcome, :action => :show, :id => patient.id)
    else
      flash.now[:alert] = 'El Correo o Contraseña es Incorrecto'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    #redirect_to root_path, notice: 'Sesión Cerrada'
    redirect_to root_path
  end
end
