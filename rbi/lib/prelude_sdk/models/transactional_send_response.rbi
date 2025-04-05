# typed: strong

module PreludeSDK
  module Models
    class TransactionalSendResponse < PreludeSDK::Internal::Type::BaseModel
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
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        expires_at:,
        template_id:,
        to:,
        variables:,
        callback_url: nil,
        correlation_id: nil,
        from: nil
      ); end
      sig do
        override
          .returns(
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
      def to_hash; end
    end
  end
end
