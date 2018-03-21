class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    @user.role == 'author'
  end

  def update?
    new?
  end

  def create?
    new?
  end

  def destroy?
    @user.role == 'author' || @user.role == 'admin'
  end

  def show?
    @user.role == 'author' || @user.role == 'subscriber'
  end

end
