# typed: strong

module PreludeSDK
  module Resources
    class Transactional
      # Send a transactional message to your user.
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
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(PreludeSDK::Models::TransactionalSendResponse)
      end
      def send_(
        # The template identifier.
        template_id:,
        # The recipient's phone number.
        to:,
        # The callback URL.
        callback_url: nil,
        # A user-defined identifier to correlate this transactional message with. It is
        # returned in the response and any webhook events that refer to this
        # transactionalmessage.
        correlation_id: nil,
        # The message expiration date.
        expires_at: nil,
        # The Sender ID.
        from: nil,
        # A BCP-47 formatted locale string with the language the text message will be sent
        # to. If there's no locale set, the language will be determined by the country
        # code of the phone number. If the language specified doesn't exist, the default
        # set on the template will be used.
        locale: nil,
        # The variables to be replaced in the template.
        variables: nil,
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
