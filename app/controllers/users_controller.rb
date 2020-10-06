class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      return redirect_to new_users_path
    end

    render :new #Si no se guarda llena un arreglo con los errores
  end

  
  private

  #Permite que solo permita los siguientes parámetros
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
