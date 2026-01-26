# typed: strong

module PreludeSDK
  module Models
    class NotifySendResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::NotifySendResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The message identifier.
      sig { returns(String) }
      attr_accessor :id

      # The message creation date in RFC3339 format.
      sig { returns(Time) }
      attr_accessor :created_at

      # The message expiration date in RFC3339 format.
      sig { returns(Time) }
      attr_accessor :expires_at

      # The template identifier.
      sig { returns(String) }
      attr_accessor :template_id

      # The recipient's phone number in E.164 format.
      sig { returns(String) }
      attr_accessor :to

      # The variables to be replaced in the template.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :variables

      # The callback URL where webhooks will be sent.
      sig { returns(T.nilable(String)) }
      attr_reader :callback_url

      sig { params(callback_url: String).void }
      attr_writer :callback_url

      # A user-defined identifier to correlate this message with your internal systems.
      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      # The SMS encoding type based on message content. GSM-7 supports standard
      # characters (up to 160 chars per segment), while UCS-2 supports Unicode including
      # emoji (up to 70 chars per segment). Only present for SMS messages.
      sig do
        returns(
          T.nilable(
            PreludeSDK::Models::NotifySendResponse::Encoding::TaggedSymbol
          )
        )
      end
      attr_reader :encoding

      sig do
        params(
          encoding: PreludeSDK::Models::NotifySendResponse::Encoding::OrSymbol
        ).void
      end
      attr_writer :encoding

      # The estimated number of SMS segments for this message. This value is not
      # contractual; the actual segment count will be determined after the SMS is sent
      # by the provider. Only present for SMS messages.
      sig { returns(T.nilable(Integer)) }
      attr_reader :estimated_segment_count

      sig { params(estimated_segment_count: Integer).void }
      attr_writer :estimated_segment_count

      # The Sender ID used for this message.
      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

      # When the message will actually be sent in RFC3339 format with timezone offset.
      # For marketing messages, this may differ from the requested schedule_at due to
      # automatic compliance adjustments.
      sig { returns(T.nilable(Time)) }
      attr_reader :schedule_at

      sig { params(schedule_at: Time).void }
      attr_writer :schedule_at

      sig do
        params(
          id: String,
          created_at: Time,
          expires_at: Time,
          template_id: String,
          to: String,
          variables: T::Hash[Symbol, String],
          callback_url: String,
          correlation_id: String,
          encoding: PreludeSDK::Models::NotifySendResponse::Encoding::OrSymbol,
          estimated_segment_count: Integer,
          from: String,
          schedule_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The message identifier.
        id:,
        # The message creation date in RFC3339 format.
        created_at:,
        # The message expiration date in RFC3339 format.
        expires_at:,
        # The template identifier.
        template_id:,
        # The recipient's phone number in E.164 format.
        to:,
        # The variables to be replaced in the template.
        variables:,
        # The callback URL where webhooks will be sent.
        callback_url: nil,
        # A user-defined identifier to correlate this message with your internal systems.
        correlation_id: nil,
        # The SMS encoding type based on message content. GSM-7 supports standard
        # characters (up to 160 chars per segment), while UCS-2 supports Unicode including
        # emoji (up to 70 chars per segment). Only present for SMS messages.
        encoding: nil,
        # The estimated number of SMS segments for this message. This value is not
        # contractual; the actual segment count will be determined after the SMS is sent
        # by the provider. Only present for SMS messages.
        estimated_segment_count: nil,
        # The Sender ID used for this message.
        from: nil,
        # When the message will actually be sent in RFC3339 format with timezone offset.
        # For marketing messages, this may differ from the requested schedule_at due to
        # automatic compliance adjustments.
        schedule_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            expires_at: Time,
            template_id: String,
            to: String,
            variables: T::Hash[Symbol, String],
            callback_url: String,
            correlation_id: String,
            encoding:
              PreludeSDK::Models::NotifySendResponse::Encoding::TaggedSymbol,
            estimated_segment_count: Integer,
            from: String,
            schedule_at: Time
          }
        )
      end
      def to_hash
      end

      # The SMS encoding type based on message content. GSM-7 supports standard
      # characters (up to 160 chars per segment), while UCS-2 supports Unicode including
      # emoji (up to 70 chars per segment). Only present for SMS messages.
      module Encoding
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PreludeSDK::Models::NotifySendResponse::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GSM_7 =
          T.let(
            :"GSM-7",
            PreludeSDK::Models::NotifySendResponse::Encoding::TaggedSymbol
          )
        UCS_2 =
          T.let(
            :"UCS-2",
            PreludeSDK::Models::NotifySendResponse::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::NotifySendResponse::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
