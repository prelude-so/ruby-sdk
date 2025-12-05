# typed: strong

module PreludeSDK
  module Models
    class NotifyGetSubscriptionConfigResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::NotifyGetSubscriptionConfigResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The subscription configuration ID.
      sig { returns(String) }
      attr_accessor :id

      # The URL to call when subscription status changes.
      sig { returns(String) }
      attr_accessor :callback_url

      # The date and time when the configuration was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The subscription messages configuration.
      sig do
        returns(
          PreludeSDK::Models::NotifyGetSubscriptionConfigResponse::Messages
        )
      end
      attr_reader :messages

      sig do
        params(
          messages:
            PreludeSDK::Models::NotifyGetSubscriptionConfigResponse::Messages::OrHash
        ).void
      end
      attr_writer :messages

      # The human-readable name for the subscription configuration.
      sig { returns(String) }
      attr_accessor :name

      # The date and time when the configuration was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # A list of phone numbers for receiving inbound messages.
      sig do
        returns(
          T.nilable(
            T::Array[
              PreludeSDK::Models::NotifyGetSubscriptionConfigResponse::MoPhoneNumber
            ]
          )
        )
      end
      attr_reader :mo_phone_numbers

      sig do
        params(
          mo_phone_numbers:
            T::Array[
              PreludeSDK::Models::NotifyGetSubscriptionConfigResponse::MoPhoneNumber::OrHash
            ]
        ).void
      end
      attr_writer :mo_phone_numbers

      sig do
        params(
          id: String,
          callback_url: String,
          created_at: Time,
          messages:
            PreludeSDK::Models::NotifyGetSubscriptionConfigResponse::Messages::OrHash,
          name: String,
          updated_at: Time,
          mo_phone_numbers:
            T::Array[
              PreludeSDK::Models::NotifyGetSubscriptionConfigResponse::MoPhoneNumber::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # The subscription configuration ID.
        id:,
        # The URL to call when subscription status changes.
        callback_url:,
        # The date and time when the configuration was created.
        created_at:,
        # The subscription messages configuration.
        messages:,
        # The human-readable name for the subscription configuration.
        name:,
        # The date and time when the configuration was last updated.
        updated_at:,
        # A list of phone numbers for receiving inbound messages.
        mo_phone_numbers: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            callback_url: String,
            created_at: Time,
            messages:
              PreludeSDK::Models::NotifyGetSubscriptionConfigResponse::Messages,
            name: String,
            updated_at: Time,
            mo_phone_numbers:
              T::Array[
                PreludeSDK::Models::NotifyGetSubscriptionConfigResponse::MoPhoneNumber
              ]
          }
        )
      end
      def to_hash
      end

      class Messages < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::NotifyGetSubscriptionConfigResponse::Messages,
              PreludeSDK::Internal::AnyHash
            )
          end

        # Message sent when user requests help.
        sig { returns(T.nilable(String)) }
        attr_reader :help_message

        sig { params(help_message: String).void }
        attr_writer :help_message

        # Message sent when user subscribes.
        sig { returns(T.nilable(String)) }
        attr_reader :start_message

        sig { params(start_message: String).void }
        attr_writer :start_message

        # Message sent when user unsubscribes.
        sig { returns(T.nilable(String)) }
        attr_reader :stop_message

        sig { params(stop_message: String).void }
        attr_writer :stop_message

        # The subscription messages configuration.
        sig do
          params(
            help_message: String,
            start_message: String,
            stop_message: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Message sent when user requests help.
          help_message: nil,
          # Message sent when user subscribes.
          start_message: nil,
          # Message sent when user unsubscribes.
          stop_message: nil
        )
        end

        sig do
          override.returns(
            {
              help_message: String,
              start_message: String,
              stop_message: String
            }
          )
        end
        def to_hash
        end
      end

      class MoPhoneNumber < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::NotifyGetSubscriptionConfigResponse::MoPhoneNumber,
              PreludeSDK::Internal::AnyHash
            )
          end

        # The ISO 3166-1 alpha-2 country code.
        sig { returns(String) }
        attr_accessor :country_code

        # The phone number in E.164 format for long codes, or short code format for short
        # codes.
        sig { returns(String) }
        attr_accessor :phone_number

        sig do
          params(country_code: String, phone_number: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ISO 3166-1 alpha-2 country code.
          country_code:,
          # The phone number in E.164 format for long codes, or short code format for short
          # codes.
          phone_number:
        )
        end

        sig { override.returns({ country_code: String, phone_number: String }) }
        def to_hash
        end
      end
    end
  end
end
