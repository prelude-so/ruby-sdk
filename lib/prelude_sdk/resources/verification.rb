# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Verification
      # Create a new verification for a specific phone number. If another non-expired
      # verification exists (the request is performed within the verification window),
      # this endpoint will perform a retry instead.
      #
      # @overload create(target:, dispatch_id: nil, metadata: nil, method_: nil, options: nil, signals: nil, request_options: {})
      #
      # @param target [PreludeSDK::Models::VerificationCreateParams::Target]
      # @param dispatch_id [String]
      # @param metadata [PreludeSDK::Models::VerificationCreateParams::Metadata]
      # @param method_ [Symbol, PreludeSDK::Models::VerificationCreateParams::Method]
      # @param options [PreludeSDK::Models::VerificationCreateParams::Options]
      # @param signals [PreludeSDK::Models::VerificationCreateParams::Signals]
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::VerificationCreateResponse]
      #
      # @see PreludeSDK::Models::VerificationCreateParams
      def create(params)
        parsed, options = PreludeSDK::Models::VerificationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/verification",
          body: parsed,
          model: PreludeSDK::Models::VerificationCreateResponse,
          options: options
        )
      end

      # Check the validity of a verification code.
      #
      # @overload check(code:, target:, request_options: {})
      #
      # @param code [String]
      # @param target [PreludeSDK::Models::VerificationCheckParams::Target]
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::VerificationCheckResponse]
      #
      # @see PreludeSDK::Models::VerificationCheckParams
      def check(params)
        parsed, options = PreludeSDK::Models::VerificationCheckParams.dump_request(params)
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
