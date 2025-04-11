# typed: strong

module PreludeSDK
  module Models
    class WatchPredictResponse < PreludeSDK::Internal::Type::BaseModel
      # The prediction identifier.
      sig { returns(String) }
      attr_accessor :id

      # The prediction outcome.
      sig { returns(PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol) }
      attr_accessor :prediction

      # A string that identifies this specific request. Report it back to us to help us
      # diagnose your issues.
      sig { returns(String) }
      attr_accessor :request_id

      sig do
        params(
          id: String,
          prediction: PreludeSDK::Models::WatchPredictResponse::Prediction::OrSymbol,
          request_id: String
        )
          .returns(T.attached_class)
      end
      def self.new(id:, prediction:, request_id:); end

      sig do
        override
          .returns(
            {id: String, prediction: PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol, request_id: String}
          )
      end
      def to_hash; end

      # The prediction outcome.
      module Prediction
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol) }

        LEGITIMATE = T.let(:legitimate, PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol)
        SUSPICIOUS = T.let(:suspicious, PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol)

        sig { override.returns(T::Array[PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
