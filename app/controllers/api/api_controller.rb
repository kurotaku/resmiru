class Api::ApiController < ApplicationController
  include ActionController::Cookies
  
  def current_user
    @current_user ||= Jwt::UserAuthenticatorService.call(request.headers)
  end
end
