# frozen_string_literal: true

module Prelude
  module Models
    class WatchFeedbackResponse < Prelude::BaseModel
      # @!attribute [rw] id
      #   A unique identifier for your feedback request.
      #   @return [String]
      optional :id, String

      # @!parse
      #   # Create a new instance of WatchFeedbackResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String, nil] :id A unique identifier for your feedback request.
      #   def initialize(data = {}) = super
    end
  end
end
