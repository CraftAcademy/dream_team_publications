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

  def show?
    new?
  end

end
