# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Watch
      # Send feedback regarding your end-users verification funnel. Events will be
      # analyzed for proactive fraud prevention and risk scoring.
      #
      # @overload feed_back(feedbacks:, request_options: {})
      #
      # @param feedbacks [Array<PreludeSDK::Models::WatchFeedBackParams::Feedback>]
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::WatchFeedBackResponse]
      #
      # @see PreludeSDK::Models::WatchFeedBackParams
      def feed_back(params)
        parsed, options = PreludeSDK::Models::WatchFeedBackParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/watch/feedback",
          body: parsed,
          model: PreludeSDK::Models::WatchFeedBackResponse,
          options: options
        )
      end

      # Predict the outcome of a verification based on Prelude’s anti-fraud system.
      #
      # @overload predict(target:, dispatch_id: nil, metadata: nil, signals: nil, request_options: {})
      #
      # @param target [PreludeSDK::Models::WatchPredictParams::Target]
      # @param dispatch_id [String]
      # @param metadata [PreludeSDK::Models::WatchPredictParams::Metadata]
      # @param signals [PreludeSDK::Models::WatchPredictParams::Signals]
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::WatchPredictResponse]
      #
      # @see PreludeSDK::Models::WatchPredictParams
      def predict(params)
        parsed, options = PreludeSDK::Models::WatchPredictParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/watch/predict",
          body: parsed,
          model: PreludeSDK::Models::WatchPredictResponse,
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
