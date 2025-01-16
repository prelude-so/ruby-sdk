# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Verification
      # Create a new verification for a specific phone number. If another non-expired
      #   verification exists (the request is performed within the verification window),
      #   this endpoint will perform a retry instead.
      #
      # @param params [PreludeSDK::Models::VerificationCreateParams, Hash{Symbol=>Object}] Attributes to send in this request.
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
      # @param opts [Hash{Symbol=>Object}, PreludeSDK::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [PreludeSDK::Models::VerificationCreateResponse]
      #
      def create(params = {}, opts = {})
        parsed = PreludeSDK::Models::VerificationCreateParams.dump(params)
        req = {
          method: :post,
          path: "v2/verification",
          body: parsed,
          model: PreludeSDK::Models::VerificationCreateResponse
        }
        @client.request(req, opts)
      end

      # Check the validity of a verification code.
      #
      # @param params [PreludeSDK::Models::VerificationCheckParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :code The OTP code to validate.
      #
      #   @option params [PreludeSDK::Models::VerificationCheckParams::Target] :target The target. Currently this can only be an E.164 formatted phone number.
      #
      # @param opts [Hash{Symbol=>Object}, PreludeSDK::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [PreludeSDK::Models::VerificationCheckResponse]
      #
      def check(params = {}, opts = {})
        parsed = PreludeSDK::Models::VerificationCheckParams.dump(params)
        req = {
          method: :post,
          path: "v2/verification/check",
          body: parsed,
          model: PreludeSDK::Models::VerificationCheckResponse
        }
        @client.request(req, opts)
      end

      # @param client [PreludeSDK::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
