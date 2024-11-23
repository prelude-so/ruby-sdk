# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Watch
      # @param client [PreludeSDK::Client]
      def initialize(client:)
        @client = client
      end

      # Once the user with a trustworthy phone number demonstrates authentic behavior,
      #   call this endpoint to report their authenticity to our systems.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Feedback] :feedback You should send a feedback event back to Watch API when your user demonstrates
      #     authentic behavior.
      #   @option params [Target] :target The target. Currently this can only be an E.164 formatted phone number.
      #
      # @param opts [Hash{Symbol => Object}, PreludeSDK::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [PreludeSDK::Models::WatchFeedBackResponse]
      def feed_back(params = {}, opts = {})
        req = {
          method: :post,
          path: "/v2/watch/feedback",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: PreludeSDK::Models::WatchFeedBackResponse
        }
        @client.request(req, opts)
      end

      # Identify trustworthy phone numbers to mitigate fake traffic or traffic involved
      #   in fraud and international revenue share fraud (IRSF) patterns. This endpoint
      #   must be implemented in conjunction with the `watch/feedback` endpoint.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Target] :target The target. Currently this can only be an E.164 formatted phone number.
      #   @option params [Signals, nil] :signals It is highly recommended that you provide the signals to increase prediction
      #     performance.
      #
      # @param opts [Hash{Symbol => Object}, PreludeSDK::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [PreludeSDK::Models::WatchPredictResponse]
      def predict(params = {}, opts = {})
        req = {
          method: :post,
          path: "/v2/watch/predict",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: PreludeSDK::Models::WatchPredictResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
