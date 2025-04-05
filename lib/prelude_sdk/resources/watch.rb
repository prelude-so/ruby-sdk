# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Watch
      # Once the user with a trustworthy phone number demonstrates authentic behavior,
      # call this endpoint to report their authenticity to our systems.
      #
      # @overload feed_back(feedback:, target:, request_options: {})
      #
      # @param feedback [PreludeSDK::Models::WatchFeedBackParams::Feedback]
      # @param target [PreludeSDK::Models::WatchFeedBackParams::Target]
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

      # Identify trustworthy phone numbers to mitigate fake traffic or traffic involved
      # in fraud and international revenue share fraud (IRSF) patterns. This endpoint
      # must be implemented in conjunction with the `watch/feedback` endpoint.
      #
      # @overload predict(target:, signals: nil, request_options: {})
      #
      # @param target [PreludeSDK::Models::WatchPredictParams::Target]
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
