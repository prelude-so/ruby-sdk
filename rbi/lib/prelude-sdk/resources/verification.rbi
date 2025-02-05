# typed: strong

module PreludeSDK
  module Resources
    class Verification
      sig do
        params(
          target: PreludeSDK::Models::VerificationCreateParams::Target,
          dispatch_id: String,
          metadata: PreludeSDK::Models::VerificationCreateParams::Metadata,
          options: PreludeSDK::Models::VerificationCreateParams::Options,
          signals: PreludeSDK::Models::VerificationCreateParams::Signals,
          request_options: PreludeSDK::RequestOpts
        ).returns(PreludeSDK::Models::VerificationCreateResponse)
      end
      def create(target:, dispatch_id:, metadata:, options:, signals:, request_options: {}); end

      sig do
        params(
          code: String,
          target: PreludeSDK::Models::VerificationCheckParams::Target,
          request_options: PreludeSDK::RequestOpts
        ).returns(PreludeSDK::Models::VerificationCheckResponse)
      end
      def check(code:, target:, request_options: {}); end

      sig { params(client: PreludeSDK::Client).void }
      def initialize(client:); end
    end
  end
end
