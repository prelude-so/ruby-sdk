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
      #   # @param id [String]
      #   # @param prediction [Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction]
      #   # @param reasoning [PreludeSDK::Models::WatchPredictResponse::Reasoning]
      #   #
      #   def initialize(id:, prediction:, reasoning:, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      # A label indicating the trustworthiness of the phone number.
      module Prediction
        extend PreludeSDK::Enum

        ALLOW = :allow
        BLOCK = :block

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      class Reasoning < PreludeSDK::BaseModel
        # @!attribute [r] cause
        #   A label explaining why the phone number was classified as not trustworthy
        #
        #   @return [Symbol, PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause, nil]
        optional :cause, enum: -> { PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause }

        # @!parse
        #   # @return [Symbol, PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause]
        #   attr_writer :cause

        # @!attribute [r] score
        #   Indicates the risk of the phone number being genuine or involved in fraudulent
        #     patterns. The higher the riskier.
        #
        #   @return [Float, nil]
        optional :score, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :score

        # @!parse
        #   # @param cause [Symbol, PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause]
        #   # @param score [Float]
        #   #
        #   def initialize(cause: nil, score: nil, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # A label explaining why the phone number was classified as not trustworthy
        module Cause
          extend PreludeSDK::Enum

          NONE = :none
          SMART_ANTIFRAUD = :smart_antifraud
          REPEAT_NUMBER = :repeat_number
          INVALID_LINE = :invalid_line

          finalize!

          class << self
            # @!parse
            #   # @return [Array<Symbol>]
            #   def values; end
          end
        end
      end
    end
  end
end
