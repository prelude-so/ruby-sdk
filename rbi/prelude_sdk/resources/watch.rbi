# typed: strong

module PreludeSDK
  module Resources
    # Evaluate email addresses and phone numbers for trustworthiness.
    class Watch
      # Predict the outcome of a verification based on Prelude’s anti-fraud system.
      sig do
        params(
          target: PreludeSDK::WatchPredictParams::Target::OrHash,
          dispatch_id: String,
          metadata: PreludeSDK::WatchPredictParams::Metadata::OrHash,
          signals: PreludeSDK::WatchPredictParams::Signals::OrHash,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(PreludeSDK::Models::WatchPredictResponse)
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
      )
      end

      # Send real-time event data from end-user interactions within your application.
      # Events will be analyzed for proactive fraud prevention and risk scoring.
      sig do
        params(
          events: T::Array[PreludeSDK::WatchSendEventsParams::Event::OrHash],
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(PreludeSDK::Models::WatchSendEventsResponse)
      end
      def send_events(
        # A list of events to dispatch. A maximum of 100 events can be sent in a single
        # request.
        events:,
        request_options: {}
      )
      end

      # Send feedback regarding your end-users verification funnel. Events will be
      # analyzed for proactive fraud prevention and risk scoring.
      sig do
        params(
          feedbacks:
            T::Array[PreludeSDK::WatchSendFeedbacksParams::Feedback::OrHash],
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(PreludeSDK::Models::WatchSendFeedbacksResponse)
      end
      def send_feedbacks(
        # A list of feedbacks to send. A maximum of 100 feedbacks can be sent in a single
        # request.
        feedbacks:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
