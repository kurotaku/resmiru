require 'ulid'

module Uniqueable
  extend ActiveSupport::Concern
  included do
    before_create :generate_ulid
  end

  def generate_ulid
    self.ulid = ULID.generate if ulid.blank?
  end
end
