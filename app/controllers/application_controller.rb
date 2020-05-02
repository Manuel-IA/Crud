require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  before_action :params_devise_custom , if: :devise_controller?
  layout "nothing"

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || clients_path
  end
  private
    def params_devise_custom
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
