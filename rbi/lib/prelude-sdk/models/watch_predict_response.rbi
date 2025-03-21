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
      sig { returns(PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol) }
      def prediction
      end

      sig do
        params(_: PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol)
          .returns(PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol)
      end
      def prediction=(_)
      end

      sig { returns(PreludeSDK::Models::WatchPredictResponse::Reasoning) }
      def reasoning
      end

      sig do
        params(_: T.any(PreludeSDK::Models::WatchPredictResponse::Reasoning, PreludeSDK::Util::AnyHash))
          .returns(T.any(PreludeSDK::Models::WatchPredictResponse::Reasoning, PreludeSDK::Util::AnyHash))
      end
      def reasoning=(_)
      end

      sig do
        params(
          id: String,
          prediction: PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol,
          reasoning: T.any(PreludeSDK::Models::WatchPredictResponse::Reasoning, PreludeSDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(id:, prediction:, reasoning:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              prediction: PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol,
              reasoning: PreludeSDK::Models::WatchPredictResponse::Reasoning
            }
          )
      end
      def to_hash
      end

      # A label indicating the trustworthiness of the phone number.
      module Prediction
        extend PreludeSDK::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol) }

        ALLOW = T.let(:allow, PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol)
        BLOCK = T.let(:block, PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol]) }
          def values
          end
        end
      end

      class Reasoning < PreludeSDK::BaseModel
        # A label explaining why the phone number was classified as not trustworthy
        sig { returns(T.nilable(PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause::TaggedSymbol)) }
        def cause
        end

        sig do
          params(_: PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause::TaggedSymbol)
            .returns(PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause::TaggedSymbol)
        end
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

        sig do
          params(cause: PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause::TaggedSymbol, score: Float)
            .returns(T.attached_class)
        end
        def self.new(cause: nil, score: nil)
        end

        sig do
          override
            .returns({cause: PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause::TaggedSymbol, score: Float})
        end
        def to_hash
        end

        # A label explaining why the phone number was classified as not trustworthy
        module Cause
          extend PreludeSDK::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause) }
          OrSymbol =
            T.type_alias { T.any(Symbol, PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause::TaggedSymbol) }

          NONE = T.let(:none, PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause::TaggedSymbol)
          SMART_ANTIFRAUD =
            T.let(:smart_antifraud, PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause::TaggedSymbol)
          REPEAT_NUMBER =
            T.let(:repeat_number, PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause::TaggedSymbol)
          INVALID_LINE =
            T.let(:invalid_line, PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[PreludeSDK::Models::WatchPredictResponse::Reasoning::Cause::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
