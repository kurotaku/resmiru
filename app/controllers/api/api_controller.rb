class Api::ApiController < ApplicationController
  protect_from_forgery with: :null_session
  
  def current_user
    @current_user ||= Jwt::UserAuthenticatorService.call(request.headers)
  end
end
