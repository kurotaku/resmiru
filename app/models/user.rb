class User < ApplicationRecord
  include Uniqueable
  has_secure_password
end
