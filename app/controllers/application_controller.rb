class ApplicationController < ActionController::Base

  # Если используется контроллер Devise? то провести проверку методом ниже
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  # разрешаем контролдлеру принимать параметр под названием Username
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
end
