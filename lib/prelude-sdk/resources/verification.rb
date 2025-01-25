# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Verification
      # Create a new verification for a specific phone number. If another non-expired
      #   verification exists (the request is performed within the verification window),
      #   this endpoint will perform a retry instead.
      #
      # @param params [PreludeSDK::Models::VerificationCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [PreludeSDK::Models::VerificationCreateParams::Target] :target The target. Currently this can only be an E.164 formatted phone number.
      #
      #   @option params [String] :dispatch_id The identifier of the dispatch that came from the front-end SDK.
      #
      #   @option params [PreludeSDK::Models::VerificationCreateParams::Metadata] :metadata The metadata for this verification. This object will be returned with every
      #     response or webhook sent that refers to this verification.
      #
      #   @option params [PreludeSDK::Models::VerificationCreateParams::Options] :options Verification options
      #
      #   @option params [PreludeSDK::Models::VerificationCreateParams::Signals] :signals The signals used for anti-fraud.
      #
      #   @option params [PreludeSDK::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [PreludeSDK::Models::VerificationCreateResponse]
      #
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
      # @param params [PreludeSDK::Models::VerificationCheckParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :code The OTP code to validate.
      #
      #   @option params [PreludeSDK::Models::VerificationCheckParams::Target] :target The target. Currently this can only be an E.164 formatted phone number.
      #
      #   @option params [PreludeSDK::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [PreludeSDK::Models::VerificationCheckResponse]
      #
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

      # @param client [PreludeSDK::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
