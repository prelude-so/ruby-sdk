# typed: strong

module PreludeSDK
  module Models
    class TransactionalSendParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # The template identifier.
      sig { returns(String) }
      attr_accessor :template_id

      # The recipient's phone number.
      sig { returns(String) }
      attr_accessor :to

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

      # The message expiration date.
      sig { returns(T.nilable(String)) }
      attr_reader :expires_at

      sig { params(expires_at: String).void }
      attr_writer :expires_at

      # The Sender ID.
      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

      # A BCP-47 formatted locale string with the language the text message will be sent
      # to. If there's no locale set, the language will be determined by the country
      # code of the phone number. If the language specified doesn't exist, the default
      # set on the template will be used.
      sig { returns(T.nilable(String)) }
      attr_reader :locale

      sig { params(locale: String).void }
      attr_writer :locale

      # The variables to be replaced in the template.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :variables

      sig { params(variables: T::Hash[Symbol, String]).void }
      attr_writer :variables

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
          request_options: T.any(PreludeSDK::RequestOptions, PreludeSDK::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        template_id:,
        to:,
        callback_url: nil,
        correlation_id: nil,
        expires_at: nil,
        from: nil,
        locale: nil,
        variables: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              template_id: String,
              to: String,
              callback_url: String,
              correlation_id: String,
              expires_at: String,
              from: String,
              locale: String,
              variables: T::Hash[Symbol, String],
              request_options: PreludeSDK::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
