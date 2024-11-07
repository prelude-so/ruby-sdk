# frozen_string_literal: true

module Prelude
  module Resources
    class Verification
      # @param client [Prelude::Client]
      def initialize(client:)
        @client = client
      end

      # Create a new verification for a specific phone number. If another non-expired
      #   verification exists (the request is performed within the verification window),
      #   this endpoint will perform a retry instead.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Target] :target The target to verify. Currently this can only be an E.164 formatted phone
      #     number.
      #   @option params [Metadata, nil] :metadata The metadata for this verification. This object will be returned with every
      #     response or webhook sent that refers to this verification.
      #   @option params [Options, nil] :options Verification options
      #   @option params [Signals, nil] :signals The signals used for anti-fraud.
      #
      # @param opts [Hash{Symbol => Object}, Prelude::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Prelude::Models::VerificationCreateResponse]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/v2/verification",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Prelude::Models::VerificationCreateResponse
        }
        @client.request(req, opts)
      end

      # Check a code
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Target] :target The target to verify. Currently this can only be an E.164 formatted phone
      #     number.
      #   @option params [String, nil] :code The OTP code to validate.
      #
      # @param opts [Hash{Symbol => Object}, Prelude::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Prelude::Models::VerificationCheckResponse]
      def check(params = {}, opts = {})
        req = {
          method: :post,
          path: "/v2/verification/check",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Prelude::Models::VerificationCheckResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
