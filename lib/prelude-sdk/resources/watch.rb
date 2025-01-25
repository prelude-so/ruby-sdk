# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Watch
      # Once the user with a trustworthy phone number demonstrates authentic behavior,
      #   call this endpoint to report their authenticity to our systems.
      #
      # @param params [PreludeSDK::Models::WatchFeedBackParams, Hash{Symbol=>Object}] .
      #
      #   @option params [PreludeSDK::Models::WatchFeedBackParams::Feedback] :feedback You should send a feedback event back to Watch API when your user demonstrates
      #     authentic behavior.
      #
      #   @option params [PreludeSDK::Models::WatchFeedBackParams::Target] :target The target. Currently this can only be an E.164 formatted phone number.
      #
      #   @option params [PreludeSDK::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [PreludeSDK::Models::WatchFeedBackResponse]
      #
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
      #   in fraud and international revenue share fraud (IRSF) patterns. This endpoint
      #   must be implemented in conjunction with the `watch/feedback` endpoint.
      #
      # @param params [PreludeSDK::Models::WatchPredictParams, Hash{Symbol=>Object}] .
      #
      #   @option params [PreludeSDK::Models::WatchPredictParams::Target] :target The target. Currently this can only be an E.164 formatted phone number.
      #
      #   @option params [PreludeSDK::Models::WatchPredictParams::Signals] :signals It is highly recommended that you provide the signals to increase prediction
      #     performance.
      #
      #   @option params [PreludeSDK::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [PreludeSDK::Models::WatchPredictResponse]
      #
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

      # @param client [PreludeSDK::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
