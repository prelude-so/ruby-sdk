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
          request_options: T.nilable(T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(PreludeSDK::Models::VerificationCreateResponse)
      end
      def create(target:, dispatch_id: nil, metadata: nil, options: nil, signals: nil, request_options: {})
      end

      # Check the validity of a verification code.
      sig do
        params(
          code: String,
          target: PreludeSDK::Models::VerificationCheckParams::Target,
          request_options: T.nilable(T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(PreludeSDK::Models::VerificationCheckResponse)
      end
      def check(code:, target:, request_options: {})
      end

      sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
