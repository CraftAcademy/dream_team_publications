class ApplicationController < ActionController::Base
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    redirect_to root_path, notice: 'Aja baja!'
  end
end
# user = User.new({password: token, email: "#{token}@example.com"}.merge!(@coordinates))
