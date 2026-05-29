# frozen_string_literal: true

module PreludeSDK
  module Resources
    # Evaluate email addresses and phone numbers for trustworthiness.
    class Watch
      # Some parameter documentations has been truncated, see
      # {PreludeSDK::Models::WatchPredictParams} for more details.
      #
      # At signup, score the user's phone number or email address (target) as legitimate
      # or suspicious. Scoring-only — does not update counters by itself. When using
      # Feedback, call predict before verification.started on the same target (and
      # correlation_id when used) so feedback can warm Watch auth-start counters. Use
      # Events for product fraud labels; use Feedback only if you run your own phone
      # verification funnel outside Prelude Verify.
      #
      # @overload predict(target:, dispatch_id: nil, metadata: nil, signals: nil, request_options: {})
      #
      # @param target [PreludeSDK::Models::WatchPredictParams::Target] The signup identifier to score — a phone number or email address.
      #
      # @param dispatch_id [String] The identifier of the dispatch that came from the front-end SDK.
      #
      # @param metadata [PreludeSDK::Models::WatchPredictParams::Metadata] The metadata for this prediction.
      #
      # @param signals [PreludeSDK::Models::WatchPredictParams::Signals] The signals used for anti-fraud. For more details, refer to [Signals](/verify/v2
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::WatchPredictResponse]
      #
      # @see PreludeSDK::Models::WatchPredictParams
      def predict(params)
        parsed, options = PreludeSDK::WatchPredictParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/watch/predict",
          body: parsed,
          model: PreludeSDK::Models::WatchPredictResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {PreludeSDK::Models::WatchSendEventsParams} for more details.
      #
      # Send custom fraud signals from your application (labels and confidence levels).
      # Events capture product-specific risk patterns and are weighted when scoring
      # traffic. Use without Predict or Feedback if you only need to report product-side
      # abuse (for example account.banned). Feedback is a separate, optional endpoint
      # for self-hosted phone verification funnels.
      #
      # @overload send_events(events:, request_options: {})
      #
      # @param events [Array<PreludeSDK::Models::WatchSendEventsParams::Event>] A list of events to dispatch. A maximum of 100 events can be sent in a single re
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::WatchSendEventsResponse]
      #
      # @see PreludeSDK::Models::WatchSendEventsParams
      def send_events(params)
        parsed, options = PreludeSDK::WatchSendEventsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/watch/event",
          body: parsed,
          model: PreludeSDK::Models::WatchSendEventsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {PreludeSDK::Models::WatchSendFeedbacksParams} for more details.
      #
      # Optional. Report verification-funnel steps (verification.started,
      # verification.completed) when you run phone verification outside Prelude Verify.
      # Feeds Watch abuse-rate counters for your own flow. Call Predict on the same
      # target before verification.started and reuse metadata.correlation_id so
      # auth-start counters receive predict signals; without a linked predict, only
      # attempt-rate counters update on started. Not required if you only use Events
      # and/or Predict, or if Verify already handles verification for that traffic.
      #
      # @overload send_feedbacks(feedbacks:, request_options: {})
      #
      # @param feedbacks [Array<PreludeSDK::Models::WatchSendFeedbacksParams::Feedback>] A list of feedbacks to send. A maximum of 100 feedbacks can be sent in a single
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::WatchSendFeedbacksResponse]
      #
      # @see PreludeSDK::Models::WatchSendFeedbacksParams
      def send_feedbacks(params)
        parsed, options = PreludeSDK::WatchSendFeedbacksParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/watch/feedback",
          body: parsed,
          model: PreludeSDK::Models::WatchSendFeedbacksResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [PreludeSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
