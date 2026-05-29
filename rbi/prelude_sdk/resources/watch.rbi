# typed: strong

module PreludeSDK
  module Resources
    # Evaluate email addresses and phone numbers for trustworthiness.
    class Watch
      # At signup, score the user's phone number or email address (target) as legitimate
      # or suspicious. Scoring-only — does not update counters by itself. When using
      # Feedback, call predict before verification.started on the same target (and
      # correlation_id when used) so feedback can warm Watch auth-start counters. Use
      # Events for product fraud labels; use Feedback only if you run your own phone
      # verification funnel outside Prelude Verify.
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
        # The signup identifier to score — a phone number or email address.
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

      # Send custom fraud signals from your application (labels and confidence levels).
      # Events capture product-specific risk patterns and are weighted when scoring
      # traffic. Use without Predict or Feedback if you only need to report product-side
      # abuse (for example account.banned). Feedback is a separate, optional endpoint
      # for self-hosted phone verification funnels.
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

      # Optional. Report verification-funnel steps (verification.started,
      # verification.completed) when you run phone verification outside Prelude Verify.
      # Feeds Watch abuse-rate counters for your own flow. Call Predict on the same
      # target before verification.started and reuse metadata.correlation_id so
      # auth-start counters receive predict signals; without a linked predict, only
      # attempt-rate counters update on started. Not required if you only use Events
      # and/or Predict, or if Verify already handles verification for that traffic.
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
