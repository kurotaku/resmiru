module Jwt::TokenProviderService
  require 'jwt'
  
  extend self

  def call(payload)
    issue_token(payload)
  end

  private
  def issue_token(payload)
    JWT.encode(payload, Rails.application.credentials.secret_key_base)
  end
end