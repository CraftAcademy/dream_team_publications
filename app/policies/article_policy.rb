class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    @user.author? || @user.admin?
  end

  def update?
    new?
  end

  def create?
    new?
  end

  def destroy?
    new?
  end

  def show?
    @user.author? || @user.subscriber? || @user.admin?
  end

end
