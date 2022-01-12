class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name, email, password, password_confirmation])
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:name, :surname, :email, :password, :current_password)
    end
  end

end
# class ApplicationController < ActionController::Base
#   protect_from_forgery with: :null_session
#   before_action :update_allowed_parameters, if: :devise_controller?
#   before_action :authenticate_user!
  
#   protected

#   def update_allowed_parameters
#     devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
#      devise_parameter_sanitizer.permit(:account_update) do |u|
#       u.permit(:name, :surname, :email, :password, :current_password)
#      end
#   end
# end
