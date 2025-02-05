# typed: strong

module PreludeSDK
  module Models
    class WatchPredictResponse < PreludeSDK::BaseModel
      Shape = T.type_alias do
        {id: String, prediction: Symbol, reasoning: PreludeSDK::Models::WatchPredictResponse::Reasoning}
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Symbol) }
      attr_accessor :prediction

      sig { returns(PreludeSDK::Models::WatchPredictResponse::Reasoning) }
      attr_accessor :reasoning

      sig do
        params(
          id: String,
          prediction: Symbol,
          reasoning: PreludeSDK::Models::WatchPredictResponse::Reasoning
        ).void
      end
      def initialize(id:, prediction:, reasoning:); end

      sig { returns(PreludeSDK::Models::WatchPredictResponse::Shape) }
      def to_h; end

      class Prediction < PreludeSDK::Enum
        abstract!

        ALLOW = :allow
        BLOCK = :block

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Reasoning < PreludeSDK::BaseModel
        Shape = T.type_alias { {cause: Symbol, score: Float} }

        sig { returns(T.nilable(Symbol)) }
        attr_reader :cause

        sig { params(cause: Symbol).void }
        attr_writer :cause

        sig { returns(T.nilable(Float)) }
        attr_reader :score

        sig { params(score: Float).void }
        attr_writer :score

        sig { params(cause: Symbol, score: Float).void }
        def initialize(cause: nil, score: nil); end

        sig { returns(PreludeSDK::Models::WatchPredictResponse::Reasoning::Shape) }
        def to_h; end

        class Cause < PreludeSDK::Enum
          abstract!

          NONE = :none
          SMART_ANTIFRAUD = :smart_antifraud
          REPEAT_NUMBER = :repeat_number
          INVALID_LINE = :invalid_line

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
