# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Verification
      # Some parameter documentations has been truncated, see
      # {PreludeSDK::Models::VerificationCreateParams} for more details.
      #
      # Create a new verification for a specific phone number. If another non-expired
      # verification exists (the request is performed within the verification window),
      # this endpoint will perform a retry instead.
      #
      # @overload create(target:, dispatch_id: nil, metadata: nil, options: nil, signals: nil, request_options: {})
      #
      # @param target [PreludeSDK::Models::VerificationCreateParams::Target] The verification target. Either a phone number or an email address. To use the e
      #
      # @param dispatch_id [String] The identifier of the dispatch that came from the front-end SDK.
      #
      # @param metadata [PreludeSDK::Models::VerificationCreateParams::Metadata] The metadata for this verification. This object will be returned with every resp
      #
      # @param options [PreludeSDK::Models::VerificationCreateParams::Options] Verification options
      #
      # @param signals [PreludeSDK::Models::VerificationCreateParams::Signals] The signals used for anti-fraud. For more details, refer to [Signals](/verify/v2
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::VerificationCreateResponse]
      #
      # @see PreludeSDK::Models::VerificationCreateParams
      def create(params)
        parsed, options = PreludeSDK::VerificationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/verification",
          body: parsed,
          model: PreludeSDK::Models::VerificationCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {PreludeSDK::Models::VerificationCheckParams} for more details.
      #
      # Check the validity of a verification code.
      #
      # @overload check(code:, target:, request_options: {})
      #
      # @param code [String] The OTP code to validate.
      #
      # @param target [PreludeSDK::Models::VerificationCheckParams::Target] The verification target. Either a phone number or an email address. To use the e
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::VerificationCheckResponse]
      #
      # @see PreludeSDK::Models::VerificationCheckParams
      def check(params)
        parsed, options = PreludeSDK::VerificationCheckParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/verification/check",
          body: parsed,
          model: PreludeSDK::Models::VerificationCheckResponse,
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
