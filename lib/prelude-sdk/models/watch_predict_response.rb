# frozen_string_literal: true

module PreludeSDK
  module Models
    class WatchPredictResponse < PreludeSDK::BaseModel
      # @!attribute id
      #   A unique identifier for your prediction request.
      #
      #   @return [String]
      required :id, String

      # @!attribute prediction
      #   A label indicating the trustworthiness of the phone number.
      #
      #   @return [Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction]
      required :prediction, enum: -> { PreludeSDK::Models::WatchPredictResponse::Prediction }

      # @!attribute reasoning
      #
      #   @return [PreludeSDK::Models::WatchPredictResponse::Reasoning]
      required :reasoning, -> { PreludeSDK::Models::WatchPredictResponse::Reasoning }

      # @!parse
      #   # @param id [String] A unique identifier for your prediction request.
      #   #
      #   # @param prediction [String] A label indicating the trustworthiness of the phone number.
      #   #
      #   # @param reasoning [PreludeSDK::Models::WatchPredictResponse::Reasoning]
      #   #
      #   def initialize(id:, prediction:, reasoning:, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      # A label indicating the trustworthiness of the phone number.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :allow
      #   # ...
      # in :block
      #   # ...
      # end
      # ```
      class Prediction < PreludeSDK::Enum
        ALLOW = :allow
        BLOCK = :block

        finalize!
      end

      class Reasoning < PreludeSDK::BaseModel
        # @!attribute cause
        #   A label explaining why the phone number was classified as not trustworthy
        #
        #   @return [Symbol, PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause]
        optional :cause, enum: -> { PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause }

        # @!attribute score
        #   Indicates the risk of the phone number being genuine or involved in fraudulent patterns. The higher the riskier.
        #
        #   @return [Float]
        optional :score, Float

        # @!parse
        #   # @param cause [String, nil] A label explaining why the phone number was classified as not trustworthy
        #   #
        #   # @param score [Float, nil] Indicates the risk of the phone number being genuine or involved in fraudulent
        #   #   patterns. The higher the riskier.
        #   #
        #   def initialize(cause: nil, score: nil, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # A label explaining why the phone number was classified as not trustworthy
        #
        # @example
        #
        # ```ruby
        # case enum
        # in :none
        #   # ...
        # in :smart_antifraud
        #   # ...
        # in :repeat_number
        #   # ...
        # in :invalid_line
        #   # ...
        # end
        # ```
        class Cause < PreludeSDK::Enum
          NONE = :none
          SMART_ANTIFRAUD = :smart_antifraud
          REPEAT_NUMBER = :repeat_number
          INVALID_LINE = :invalid_line

          finalize!
        end
      end
    end
  end
end
