# typed: strong

module PreludeSDK
  module Resources
    class Verification
      # Create a new verification for a specific phone number. If another non-expired
      #   verification exists (the request is performed within the verification window),
      #   this endpoint will perform a retry instead.
      sig do
        params(
          target: PreludeSDK::Models::VerificationCreateParams::Target,
          dispatch_id: String,
          metadata: PreludeSDK::Models::VerificationCreateParams::Metadata,
          options: PreludeSDK::Models::VerificationCreateParams::Options,
          signals: PreludeSDK::Models::VerificationCreateParams::Signals,
          request_options: T.nilable(T.any(PreludeSDK::RequestOptions, PreludeSDK::Util::AnyHash))
        )
          .returns(PreludeSDK::Models::VerificationCreateResponse)
      end
      def create(
        # The verification target. Either a phone number or an email address. To use the
        #   email verification feature contact us to discuss your use case.
        target:,
        # The identifier of the dispatch that came from the front-end SDK.
        dispatch_id: nil,
        # The metadata for this verification. This object will be returned with every
        #   response or webhook sent that refers to this verification.
        metadata: nil,
        # Verification options
        options: nil,
        # The signals used for anti-fraud. For more details, refer to
        #   [Signals](/guides/prevent-fraud#signals).
        signals: nil,
        request_options: {}
      )
      end

      # Check the validity of a verification code.
      sig do
        params(
          code: String,
          target: PreludeSDK::Models::VerificationCheckParams::Target,
          request_options: T.nilable(T.any(PreludeSDK::RequestOptions, PreludeSDK::Util::AnyHash))
        )
          .returns(PreludeSDK::Models::VerificationCheckResponse)
      end
      def check(
        # The OTP code to validate.
        code:,
        # The verification target. Either a phone number or an email address. To use the
        #   email verification feature contact us to discuss your use case.
        target:,
        request_options: {}
      )
      end

      sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
