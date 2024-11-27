# frozen_string_literal: true

module PreludeSDK
  module Models
    class WatchPredictResponse < PreludeSDK::BaseModel
      # @!attribute [rw] id
      #   A unique identifier for your prediction request.
      #   @return [String]
      required :id, String

      # @!attribute [rw] prediction
      #   A label indicating the trustworthiness of the phone number.
      #   @return [Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction]
      required :prediction, enum: -> { PreludeSDK::Models::WatchPredictResponse::Prediction }

      # @!attribute [rw] reasoning
      #   @return [PreludeSDK::Models::WatchPredictResponse::Reasoning]
      required :reasoning, -> { PreludeSDK::Models::WatchPredictResponse::Reasoning }

      # A label indicating the trustworthiness of the phone number.
      class Prediction < PreludeSDK::Enum
        ALLOW = :allow
        BLOCK = :block
      end

      class Reasoning < PreludeSDK::BaseModel
        # @!attribute [rw] cause
        #   A label explaining why the phone number was classified as not trustworthy
        #   @return [Symbol, PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause]
        optional :cause, enum: -> { PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause }

        # @!attribute [rw] score
        #   Indicates the risk of the phone number being genuine or involved in fraudulent patterns. The higher the riskier.
        #   @return [Float]
        optional :score, Float

        # A label explaining why the phone number was classified as not trustworthy
        class Cause < PreludeSDK::Enum
          NONE = :none
          SMART_ANTIFRAUD = :smart_antifraud
          REPEAT_NUMBER = :repeat_number
          INVALID_LINE = :invalid_line
        end

        # @!parse
        #   # Create a new instance of Reasoning from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :cause A label explaining why the phone number was classified as not trustworthy
        #   #   @option data [Float, nil] :score Indicates the risk of the phone number being genuine or involved in fraudulent
        #   #     patterns. The higher the riskier.
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of WatchPredictResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id A unique identifier for your prediction request.
      #   #   @option data [String] :prediction A label indicating the trustworthiness of the phone number.
      #   #   @option data [Object] :reasoning
      #   def initialize(data = {}) = super
    end
  end
end
