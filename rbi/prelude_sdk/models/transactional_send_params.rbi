# typed: strong

module PreludeSDK
  module Models
    class TransactionalSendParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::TransactionalSendParams,
            PreludeSDK::Internal::AnyHash
          )
        end

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

      # A user-defined identifier to correlate this transactional message with. It is
      # returned in the response and any webhook events that refer to this
      # transactionalmessage.
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

      # The preferred delivery channel for the message. When specified, the system will
      # prioritize sending via the requested channel if the template is configured for
      # it.
      #
      # If not specified and the template is configured for WhatsApp, the message will
      # be sent via WhatsApp first, with automatic fallback to SMS if WhatsApp delivery
      # is unavailable.
      #
      # Supported channels: `sms`, `rcs`, `whatsapp`.
      sig do
        returns(
          T.nilable(
            PreludeSDK::TransactionalSendParams::PreferredChannel::OrSymbol
          )
        )
      end
      attr_reader :preferred_channel

      sig do
        params(
          preferred_channel:
            PreludeSDK::TransactionalSendParams::PreferredChannel::OrSymbol
        ).void
      end
      attr_writer :preferred_channel

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
          preferred_channel:
            PreludeSDK::TransactionalSendParams::PreferredChannel::OrSymbol,
          variables: T::Hash[Symbol, String],
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
        # The preferred delivery channel for the message. When specified, the system will
        # prioritize sending via the requested channel if the template is configured for
        # it.
        #
        # If not specified and the template is configured for WhatsApp, the message will
        # be sent via WhatsApp first, with automatic fallback to SMS if WhatsApp delivery
        # is unavailable.
        #
        # Supported channels: `sms`, `rcs`, `whatsapp`.
        preferred_channel: nil,
        # The variables to be replaced in the template.
        variables: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            template_id: String,
            to: String,
            callback_url: String,
            correlation_id: String,
            expires_at: String,
            from: String,
            locale: String,
            preferred_channel:
              PreludeSDK::TransactionalSendParams::PreferredChannel::OrSymbol,
            variables: T::Hash[Symbol, String],
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The preferred delivery channel for the message. When specified, the system will
      # prioritize sending via the requested channel if the template is configured for
      # it.
      #
      # If not specified and the template is configured for WhatsApp, the message will
      # be sent via WhatsApp first, with automatic fallback to SMS if WhatsApp delivery
      # is unavailable.
      #
      # Supported channels: `sms`, `rcs`, `whatsapp`.
      module PreferredChannel
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PreludeSDK::TransactionalSendParams::PreferredChannel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(
            :sms,
            PreludeSDK::TransactionalSendParams::PreferredChannel::TaggedSymbol
          )
        RCS =
          T.let(
            :rcs,
            PreludeSDK::TransactionalSendParams::PreferredChannel::TaggedSymbol
          )
        WHATSAPP =
          T.let(
            :whatsapp,
            PreludeSDK::TransactionalSendParams::PreferredChannel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::TransactionalSendParams::PreferredChannel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
