# frozen_string_literal: true

module Prelude
  module Models
    class WatchPredictResponse < Prelude::BaseModel
      # @!attribute [rw] id
      #   A unique identifier for your prediction request.
      #   @return [String]
      optional :id, String

      # @!attribute [rw] prediction
      #   A label indicating the trustworthiness of the phone number.
      #   @return [Symbol, Prelude::Models::WatchPredictResponse::Prediction]
      optional :prediction, enum: -> { Prelude::Models::WatchPredictResponse::Prediction }

      # @!attribute [rw] reasoning
      #   @return [Prelude::Models::WatchPredictResponse::Reasoning]
      optional :reasoning, -> { Prelude::Models::WatchPredictResponse::Reasoning }

      # A label indicating the trustworthiness of the phone number.
      class Prediction < Prelude::Enum
        ALLOW = :allow
        BLOCK = :block
      end

      class Reasoning < Prelude::BaseModel
        # @!attribute [rw] cause
        #   A label explaining why the phone number was classified as not trustworthy
        #   @return [Symbol, Prelude::Models::WatchPredictResponse::Reasoning::Cause]
        optional :cause, enum: -> { Prelude::Models::WatchPredictResponse::Reasoning::Cause }

        # @!attribute [rw] score
        #   Indicates the risk of the phone number being genuine or involved in fraudulent patterns. The higher the riskier.
        #   @return [Float]
        optional :score, Float

        # A label explaining why the phone number was classified as not trustworthy
        class Cause < Prelude::Enum
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
      #   #   @option data [String, nil] :id A unique identifier for your prediction request.
      #   #   @option data [String, nil] :prediction A label indicating the trustworthiness of the phone number.
      #   #   @option data [Object, nil] :reasoning
      #   def initialize(data = {}) = super
    end
  end
end
