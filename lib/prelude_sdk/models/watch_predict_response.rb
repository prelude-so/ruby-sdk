# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#predict
    class WatchPredictResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The prediction identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute prediction
      #   The prediction outcome.
      #
      #   @return [Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction]
      required :prediction, enum: -> { PreludeSDK::Models::WatchPredictResponse::Prediction }

      # @!attribute request_id
      #   A string that identifies this specific request. Report it back to us to help us
      #   diagnose your issues.
      #
      #   @return [String]
      required :request_id, String

      # @!parse
      #   # @param id [String]
      #   # @param prediction [Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction]
      #   # @param request_id [String]
      #   #
      #   def initialize(id:, prediction:, request_id:, **) = super

      # def initialize: (Hash | PreludeSDK::Internal::Type::BaseModel) -> void

      # The prediction outcome.
      #
      # @see PreludeSDK::Models::WatchPredictResponse#prediction
      module Prediction
        extend PreludeSDK::Internal::Type::Enum

        LEGITIMATE = :legitimate
        SUSPICIOUS = :suspicious

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
