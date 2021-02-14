class UserPolicy < ApplicationPolicy
  def create?
    @user.admin? || @user.gerente?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
