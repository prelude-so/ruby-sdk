# typed: strong

module PreludeSDK
  module Models
    class NotifyReplyParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(PreludeSDK::NotifyReplyParams, PreludeSDK::Internal::AnyHash)
        end

      # The inbound message ID (prefixed with `im_`) to reply to. This ID is provided in
      # the `inbound.message.received` webhook event.
      sig { returns(String) }
      attr_accessor :reply_to

      # The reply message body sent as a free-form WhatsApp text.
      sig { returns(String) }
      attr_accessor :text

      # The recipient's phone number in E.164 format. Must match the phone number that
      # sent the original inbound message.
      sig { returns(String) }
      attr_accessor :to

      # The URL where webhooks will be sent for delivery events of this reply.
      sig { returns(T.nilable(String)) }
      attr_reader :callback_url

      sig { params(callback_url: String).void }
      attr_writer :callback_url

      # A user-defined identifier to correlate this reply with your internal systems. It
      # is returned in the response and any webhook events that refer to this message.
      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      sig do
        params(
          reply_to: String,
          text: String,
          to: String,
          callback_url: String,
          correlation_id: String,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The inbound message ID (prefixed with `im_`) to reply to. This ID is provided in
        # the `inbound.message.received` webhook event.
        reply_to:,
        # The reply message body sent as a free-form WhatsApp text.
        text:,
        # The recipient's phone number in E.164 format. Must match the phone number that
        # sent the original inbound message.
        to:,
        # The URL where webhooks will be sent for delivery events of this reply.
        callback_url: nil,
        # A user-defined identifier to correlate this reply with your internal systems. It
        # is returned in the response and any webhook events that refer to this message.
        correlation_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            reply_to: String,
            text: String,
            to: String,
            callback_url: String,
            correlation_id: String,
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
