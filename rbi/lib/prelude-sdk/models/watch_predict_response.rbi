# typed: strong

module PreludeSDK
  module Models
    class WatchPredictResponse < PreludeSDK::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Symbol) }
      def prediction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def prediction=(_)
      end

      sig { returns(PreludeSDK::Models::WatchPredictResponse::Reasoning) }
      def reasoning
      end

      sig do
        params(_: PreludeSDK::Models::WatchPredictResponse::Reasoning).returns(PreludeSDK::Models::WatchPredictResponse::Reasoning)
      end
      def reasoning=(_)
      end

      sig do
        params(
          id: String,
          prediction: Symbol,
          reasoning: PreludeSDK::Models::WatchPredictResponse::Reasoning
        ).void
      end
      def initialize(id:, prediction:, reasoning:)
      end

      sig do
        override.returns(
          {
            id: String,
            prediction: Symbol,
            reasoning: PreludeSDK::Models::WatchPredictResponse::Reasoning
          }
        )
      end
      def to_hash
      end

      class Prediction < PreludeSDK::Enum
        abstract!

        ALLOW = :allow
        BLOCK = :block

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Reasoning < PreludeSDK::BaseModel
        sig { returns(T.nilable(Symbol)) }
        def cause
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cause=(_)
        end

        sig { returns(T.nilable(Float)) }
        def score
        end

        sig { params(_: Float).returns(Float) }
        def score=(_)
        end

        sig { params(cause: Symbol, score: Float).void }
        def initialize(cause: nil, score: nil)
        end

        sig { override.returns({cause: Symbol, score: Float}) }
        def to_hash
        end

        class Cause < PreludeSDK::Enum
          abstract!

          NONE = :none
          SMART_ANTIFRAUD = :smart_antifraud
          REPEAT_NUMBER = :repeat_number
          INVALID_LINE = :invalid_line

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
