class ApplicationController < ActionController::Base

  include SessionsHelper
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
     flash[:danger] = 'Você não tem permissão para fazer esta ação'
     redirect_to(request.referrer || root_path)
   end
end
