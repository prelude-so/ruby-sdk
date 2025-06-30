# typed: strong

module PreludeSDK
  module Resources
    class Verification
      # Create a new verification for a specific phone number. If another non-expired
      # verification exists (the request is performed within the verification window),
      # this endpoint will perform a retry instead.
      sig do
        params(
          target: PreludeSDK::VerificationCreateParams::Target::OrHash,
          dispatch_id: String,
          metadata: PreludeSDK::VerificationCreateParams::Metadata::OrHash,
          options: PreludeSDK::VerificationCreateParams::Options::OrHash,
          signals: PreludeSDK::VerificationCreateParams::Signals::OrHash,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(PreludeSDK::Models::VerificationCreateResponse)
      end
      def create(
        # The verification target. Either a phone number or an email address. To use the
        # email verification feature contact us to discuss your use case.
        target:,
        # The identifier of the dispatch that came from the front-end SDK.
        dispatch_id: nil,
        # The metadata for this verification. This object will be returned with every
        # response or webhook sent that refers to this verification.
        metadata: nil,
        # Verification options
        options: nil,
        # The signals used for anti-fraud. For more details, refer to
        # [Signals](/verify/v2/documentation/prevent-fraud#signals).
        signals: nil,
        request_options: {}
      )
      end

      # Check the validity of a verification code.
      sig do
        params(
          code: String,
          target: PreludeSDK::VerificationCheckParams::Target::OrHash,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(PreludeSDK::Models::VerificationCheckResponse)
      end
      def check(
        # The OTP code to validate.
        code:,
        # The verification target. Either a phone number or an email address. To use the
        # email verification feature contact us to discuss your use case.
        target:,
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
