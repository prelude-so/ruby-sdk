# typed: strong

module PreludeSDK
  module Resources
    class Watch
      sig do
        params(
          feedback: PreludeSDK::Models::WatchFeedBackParams::Feedback,
          target: PreludeSDK::Models::WatchFeedBackParams::Target,
          request_options: T.nilable(T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(PreludeSDK::Models::WatchFeedBackResponse)
      end
      def feed_back(feedback:, target:, request_options: {})
      end

      sig do
        params(
          target: PreludeSDK::Models::WatchPredictParams::Target,
          signals: PreludeSDK::Models::WatchPredictParams::Signals,
          request_options: T.nilable(T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(PreludeSDK::Models::WatchPredictResponse)
      end
      def predict(target:, signals: nil, request_options: {})
      end

      sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
