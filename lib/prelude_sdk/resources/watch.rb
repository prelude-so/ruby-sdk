# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Watch
      # Some parameter documentations has been truncated, see
      # {PreludeSDK::Models::WatchPredictParams} for more details.
      #
      # Predict the outcome of a verification based on Prelude’s anti-fraud system.
      #
      # @overload predict(target:, dispatch_id: nil, metadata: nil, signals: nil, request_options: {})
      #
      # @param target [PreludeSDK::WatchPredictParams::Target] The prediction target. Only supports phone numbers for now.
      #
      # @param dispatch_id [String] The identifier of the dispatch that came from the front-end SDK.
      #
      # @param metadata [PreludeSDK::WatchPredictParams::Metadata] The metadata for this prediction.
      #
      # @param signals [PreludeSDK::WatchPredictParams::Signals] The signals used for anti-fraud. For more details, refer to [Signals](/verify/v2
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

      # Send real-time event data from end-user interactions within your application.
      # Events will be analyzed for proactive fraud prevention and risk scoring.
      #
      # @overload send_events(events:, request_options: {})
      #
      # @param events [Array<PreludeSDK::WatchSendEventsParams::Event>] A list of events to dispatch.
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

      # Send feedback regarding your end-users verification funnel. Events will be
      # analyzed for proactive fraud prevention and risk scoring.
      #
      # @overload send_feedbacks(feedbacks:, request_options: {})
      #
      # @param feedbacks [Array<PreludeSDK::WatchSendFeedbacksParams::Feedback>] A list of feedbacks to send.
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
