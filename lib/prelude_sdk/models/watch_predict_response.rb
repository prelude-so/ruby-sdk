# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#predict
    class WatchPredictResponse < PreludeSDK::Internal::Type::BaseModel
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

      # def initialize: (Hash | PreludeSDK::Internal::Type::BaseModel) -> void

      # A label indicating the trustworthiness of the phone number.
      #
      # @see PreludeSDK::Models::WatchPredictResponse#prediction
      module Prediction
        extend PreludeSDK::Internal::Type::Enum

        ALLOW = :allow
        BLOCK = :block

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see PreludeSDK::Models::WatchPredictResponse#reasoning
      class Reasoning < PreludeSDK::Internal::Type::BaseModel
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
        #   patterns. The higher the riskier.
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

        # def initialize: (Hash | PreludeSDK::Internal::Type::BaseModel) -> void

        # A label explaining why the phone number was classified as not trustworthy
        #
        # @see PreludeSDK::Models::WatchPredictResponse::Reasoning#cause
        module Cause
          extend PreludeSDK::Internal::Type::Enum

          NONE = :none
          SMART_ANTIFRAUD = :smart_antifraud
          REPEAT_NUMBER = :repeat_number
          INVALID_LINE = :invalid_line

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
