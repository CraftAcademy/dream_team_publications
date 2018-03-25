class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale

  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    redirect_to root_path, notice: 'Aja baja!'
  end

  private

  def set_locale
    I18n.locale = I18n.available_locales.include?(params[:locale]&.to_sym) ? params[:locale] : I18n.default_locale
    Rails.application.routes.default_url_options[:locale] = I18n.locale
  end
end
