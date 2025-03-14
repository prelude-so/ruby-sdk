# typed: strong

module PreludeSDK
  module Models
    class WatchPredictResponse < PreludeSDK::BaseModel
      # A unique identifier for your prediction request.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # A label indicating the trustworthiness of the phone number.
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
        params(_: PreludeSDK::Models::WatchPredictResponse::Reasoning)
          .returns(PreludeSDK::Models::WatchPredictResponse::Reasoning)
      end
      def reasoning=(_)
      end

      sig do
        params(id: String, prediction: Symbol, reasoning: PreludeSDK::Models::WatchPredictResponse::Reasoning)
          .returns(T.attached_class)
      end
      def self.new(id:, prediction:, reasoning:)
      end

      sig do
        override
          .returns({id: String, prediction: Symbol, reasoning: PreludeSDK::Models::WatchPredictResponse::Reasoning})
      end
      def to_hash
      end

      # A label indicating the trustworthiness of the phone number.
      class Prediction < PreludeSDK::Enum
        abstract!

        ALLOW = :allow
        BLOCK = :block

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Reasoning < PreludeSDK::BaseModel
        # A label explaining why the phone number was classified as not trustworthy
        sig { returns(T.nilable(Symbol)) }
        def cause
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cause=(_)
        end

        # Indicates the risk of the phone number being genuine or involved in fraudulent
        #   patterns. The higher the riskier.
        sig { returns(T.nilable(Float)) }
        def score
        end

        sig { params(_: Float).returns(Float) }
        def score=(_)
        end

        sig { params(cause: Symbol, score: Float).returns(T.attached_class) }
        def self.new(cause: nil, score: nil)
        end

        sig { override.returns({cause: Symbol, score: Float}) }
        def to_hash
        end

        # A label explaining why the phone number was classified as not trustworthy
        class Cause < PreludeSDK::Enum
          abstract!

          NONE = :none
          SMART_ANTIFRAUD = :smart_antifraud
          REPEAT_NUMBER = :repeat_number
          INVALID_LINE = :invalid_line

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
