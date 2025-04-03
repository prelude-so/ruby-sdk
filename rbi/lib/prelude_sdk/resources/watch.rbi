# typed: strong

module PreludeSDK
  module Resources
    class Watch
      # Once the user with a trustworthy phone number demonstrates authentic behavior,
      #   call this endpoint to report their authenticity to our systems.
      sig do
        params(
          feedback: T.any(PreludeSDK::Models::WatchFeedBackParams::Feedback, PreludeSDK::Internal::Util::AnyHash),
          target: T.any(PreludeSDK::Models::WatchFeedBackParams::Target, PreludeSDK::Internal::Util::AnyHash),
          request_options: T.nilable(T.any(PreludeSDK::RequestOptions, PreludeSDK::Internal::Util::AnyHash))
        )
          .returns(PreludeSDK::Models::WatchFeedBackResponse)
      end
      def feed_back(
        # You should send a feedback event back to Watch API when your user demonstrates
        #   authentic behavior.
        feedback:,
        # The verification target. Either a phone number or an email address. To use the
        #   email verification feature contact us to discuss your use case.
        target:,
        request_options: {}
      )
      end

      # Identify trustworthy phone numbers to mitigate fake traffic or traffic involved
      #   in fraud and international revenue share fraud (IRSF) patterns. This endpoint
      #   must be implemented in conjunction with the `watch/feedback` endpoint.
      sig do
        params(
          target: T.any(PreludeSDK::Models::WatchPredictParams::Target, PreludeSDK::Internal::Util::AnyHash),
          signals: T.any(PreludeSDK::Models::WatchPredictParams::Signals, PreludeSDK::Internal::Util::AnyHash),
          request_options: T.nilable(T.any(PreludeSDK::RequestOptions, PreludeSDK::Internal::Util::AnyHash))
        )
          .returns(PreludeSDK::Models::WatchPredictResponse)
      end
      def predict(
        # The verification target. Either a phone number or an email address. To use the
        #   email verification feature contact us to discuss your use case.
        target:,
        # It is highly recommended that you provide the signals to increase prediction
        #   performance.
        signals: nil,
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
