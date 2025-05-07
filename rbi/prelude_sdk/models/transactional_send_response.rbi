# typed: strong

module PreludeSDK
  module Models
    class TransactionalSendResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, PreludeSDK::Internal::AnyHash) }

      # The message identifier.
      sig { returns(String) }
      attr_accessor :id

      # The message creation date.
      sig { returns(Time) }
      attr_accessor :created_at

      # The message expiration date.
      sig { returns(Time) }
      attr_accessor :expires_at

      # The template identifier.
      sig { returns(String) }
      attr_accessor :template_id

      # The recipient's phone number.
      sig { returns(String) }
      attr_accessor :to

      # The variables to be replaced in the template.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :variables

      # The callback URL.
      sig { returns(T.nilable(String)) }
      attr_reader :callback_url

      sig { params(callback_url: String).void }
      attr_writer :callback_url

      # A unique, user-defined identifier that will be included in webhook events.
      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      # The Sender ID.
      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

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
          from: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The message identifier.
        id:,
        # The message creation date.
        created_at:,
        # The message expiration date.
        expires_at:,
        # The template identifier.
        template_id:,
        # The recipient's phone number.
        to:,
        # The variables to be replaced in the template.
        variables:,
        # The callback URL.
        callback_url: nil,
        # A unique, user-defined identifier that will be included in webhook events.
        correlation_id: nil,
        # The Sender ID.
        from: nil
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
            from: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
