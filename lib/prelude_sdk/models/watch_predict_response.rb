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

      # @!method initialize(id:, prediction:, request_id:)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::WatchPredictResponse} for more details.
      #
      #   @param id [String] The prediction identifier.
      #
      #   @param prediction [Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction] The prediction outcome.
      #
      #   @param request_id [String] A string that identifies this specific request. Report it back to us to help us

      # The prediction outcome.
      #
      # @see PreludeSDK::Models::WatchPredictResponse#prediction
      module Prediction
        extend PreludeSDK::Internal::Type::Enum

        LEGITIMATE = :legitimate
        SUSPICIOUS = :suspicious

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
