# typed: strong

module PreludeSDK
  module Resources
    class Transactional
      sig do
        params(
          template_id: String,
          to: String,
          callback_url: String,
          correlation_id: String,
          expires_at: String,
          from: String,
          locale: String,
          variables: T::Hash[Symbol, String],
          request_options: PreludeSDK::RequestOpts
        ).returns(PreludeSDK::Models::TransactionalSendResponse)
      end
      def send_(
        template_id:,
        to:,
        callback_url:,
        correlation_id:,
        expires_at:,
        from:,
        locale:,
        variables:,
        request_options: {}
      ); end

      sig { params(client: PreludeSDK::Client).void }
      def initialize(client:); end
    end
  end
end
