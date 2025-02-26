# frozen_string_literal: true

module PreludeSDK
  module Models
    class WatchPredictResponse < PreludeSDK::BaseModel
      # @!attribute [r] id
      #   A unique identifier for your prediction request.
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute [r] prediction
      #   A label indicating the trustworthiness of the phone number.
      #
      #   @return [Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction, nil]
      optional :prediction, enum: -> { PreludeSDK::Models::WatchPredictResponse::Prediction }

      # @!parse
      #   # @return [Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction]
      #   attr_writer :prediction

      # @!attribute [r] reasoning
      #
      #   @return [PreludeSDK::Models::WatchPredictResponse::Reasoning, nil]
      optional :reasoning, -> { PreludeSDK::Models::WatchPredictResponse::Reasoning }

      # @!parse
      #   # @return [PreludeSDK::Models::WatchPredictResponse::Reasoning]
      #   attr_writer :reasoning

      # @!parse
      #   # @param id [String]
      #   # @param prediction [Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction]
      #   # @param reasoning [PreludeSDK::Models::WatchPredictResponse::Reasoning]
      #   #
      #   def initialize(id: nil, prediction: nil, reasoning: nil, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      # @abstract
      #
      # A label indicating the trustworthiness of the phone number.
      #
      # @example
      # ```ruby
      # case prediction
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

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
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

        # @abstract
        #
        # A label explaining why the phone number was classified as not trustworthy
        #
        # @example
        # ```ruby
        # case cause
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

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
