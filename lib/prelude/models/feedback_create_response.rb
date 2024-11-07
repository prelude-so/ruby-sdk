# frozen_string_literal: true

module Prelude
  module Models
    class FeedbackCreateResponse < Prelude::BaseModel
      # @!attribute [rw] uuid
      #   The UUID of the feedback.
      #   @return [String]
      optional :uuid, String

      # @!parse
      #   # Create a new instance of FeedbackCreateResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String, nil] :uuid The UUID of the feedback.
      #   def initialize(data = {}) = super
    end
  end
end
