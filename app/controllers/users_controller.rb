class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
  after_action :verify_authorized, only: [:new, :destroy]

  def new
    @user = User.new
    authorize @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Usuário cadastrado com sucesso!'
      redirect_to index_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "Dados atualizados com sucesso!"
      redirect_to index_url
    else
      render 'edit'
    end
  end

  def destroy
    authorize @user
    user_name = @user.name

    if @user.destroy
      flash[:success] = "Excluido o usuário #{user_name} com sucesso!"
      redirect_to index_url
    else
      render 'index'
    end

  end

  private
  def user_params
    params.require(:user).permit(:name, :mat, :role, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
