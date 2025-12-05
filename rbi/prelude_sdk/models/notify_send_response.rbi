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
            from: String,
            schedule_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
