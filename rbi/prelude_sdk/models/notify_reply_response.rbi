# typed: strong

module PreludeSDK
  module Models
    class NotifyReplyResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::NotifyReplyResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The reply message identifier.
      sig { returns(String) }
      attr_accessor :id

      # The reply creation date in RFC3339 format.
      sig { returns(Time) }
      attr_accessor :created_at

      # The inbound message ID this reply was sent in response to.
      sig { returns(String) }
      attr_accessor :reply_to

      # The reply message body that was sent.
      sig { returns(String) }
      attr_accessor :text

      # The recipient's phone number in E.164 format.
      sig { returns(String) }
      attr_accessor :to

      # The callback URL where webhooks will be sent.
      sig { returns(T.nilable(String)) }
      attr_reader :callback_url

      sig { params(callback_url: String).void }
      attr_writer :callback_url

      # The user-defined correlation identifier echoed back from the request.
      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      sig do
        params(
          id: String,
          created_at: Time,
          reply_to: String,
          text: String,
          to: String,
          callback_url: String,
          correlation_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The reply message identifier.
        id:,
        # The reply creation date in RFC3339 format.
        created_at:,
        # The inbound message ID this reply was sent in response to.
        reply_to:,
        # The reply message body that was sent.
        text:,
        # The recipient's phone number in E.164 format.
        to:,
        # The callback URL where webhooks will be sent.
        callback_url: nil,
        # The user-defined correlation identifier echoed back from the request.
        correlation_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            reply_to: String,
            text: String,
            to: String,
            callback_url: String,
            correlation_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
