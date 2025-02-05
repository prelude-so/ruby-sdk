# typed: strong

module PreludeSDK
  module Resources
    class Verification
      sig do
        params(
          params: T.any(PreludeSDK::Models::VerificationCreateParams, T::Hash[Symbol, T.anything]),
          target: PreludeSDK::Models::VerificationCreateParams::Target,
          dispatch_id: String,
          metadata: PreludeSDK::Models::VerificationCreateParams::Metadata,
          options: PreludeSDK::Models::VerificationCreateParams::Options,
          signals: PreludeSDK::Models::VerificationCreateParams::Signals,
          request_options: PreludeSDK::RequestOpts
        ).returns(PreludeSDK::Models::VerificationCreateResponse)
      end
      def create(params, target:, dispatch_id:, metadata:, options:, signals:, request_options: {}); end

      sig do
        params(
          params: T.any(PreludeSDK::Models::VerificationCheckParams, T::Hash[Symbol, T.anything]),
          code: String,
          target: PreludeSDK::Models::VerificationCheckParams::Target,
          request_options: PreludeSDK::RequestOpts
        ).returns(PreludeSDK::Models::VerificationCheckResponse)
      end
      def check(params, code:, target:, request_options: {}); end

      sig { params(client: PreludeSDK::Client).void }
      def initialize(client:); end
    end
  end
end
