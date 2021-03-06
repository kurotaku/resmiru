# frozen_string_literal: true

module BaseService
  extend ActiveSupport::Concern
  class_methods do
    def perform(*args)
      new(*args).perform
    end
  end
end
