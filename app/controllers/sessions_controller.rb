class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(mat: params[:session][:mat])
    if user && user.authenticate(params[:session][:password])
      #sign_in(user)
      redirect_to root_url
    else
      flash.now[:danger] = "Email ou senha invalidos !"
      render 'new'
    end
  end

  def destroy
    sign_out
    flash[:success] = "Logout com sucesso!"
    redirect_to entrar_path
  end
end
