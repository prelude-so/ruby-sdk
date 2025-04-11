# typed: strong

module PreludeSDK
  module Resources
    class Watch
      # Send feedback regarding your end-users verification funnel. Events will be
      # analyzed for proactive fraud prevention and risk scoring.
      sig do
        params(
          feedbacks: T::Array[T.any(PreludeSDK::Models::WatchFeedBackParams::Feedback, PreludeSDK::Internal::AnyHash)],
          request_options: T.nilable(T.any(PreludeSDK::RequestOptions, PreludeSDK::Internal::AnyHash))
        )
          .returns(PreludeSDK::Models::WatchFeedBackResponse)
      end
      def feed_back(
        # A list of feedbacks to send.
        feedbacks:,
        request_options: {}
      ); end
      # Predict the outcome of a verification based on Prelude’s anti-fraud system.
      sig do
        params(
          target: T.any(PreludeSDK::Models::WatchPredictParams::Target, PreludeSDK::Internal::AnyHash),
          dispatch_id: String,
          metadata: T.any(PreludeSDK::Models::WatchPredictParams::Metadata, PreludeSDK::Internal::AnyHash),
          signals: T.any(PreludeSDK::Models::WatchPredictParams::Signals, PreludeSDK::Internal::AnyHash),
          request_options: T.nilable(T.any(PreludeSDK::RequestOptions, PreludeSDK::Internal::AnyHash))
        )
          .returns(PreludeSDK::Models::WatchPredictResponse)
      end
      def predict(
        # The prediction target. Only supports phone numbers for now.
        target:,
        # The identifier of the dispatch that came from the front-end SDK.
        dispatch_id: nil,
        # The metadata for this prediction.
        metadata: nil,
        # The signals used for anti-fraud. For more details, refer to
        # [Signals](/verify/v2/documentation/prevent-fraud#signals).
        signals: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
