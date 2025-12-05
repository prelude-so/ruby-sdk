# typed: strong

module PreludeSDK
  module Models
    class NotifyGetSubscriptionPhoneNumberResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The subscription configuration ID.
      sig { returns(String) }
      attr_accessor :config_id

      # The phone number in E.164 format.
      sig { returns(String) }
      attr_accessor :phone_number

      # How the subscription state was changed:
      #
      # - `MO_KEYWORD` - User sent a keyword (STOP/START)
      # - `API` - Changed via API
      # - `CSV_IMPORT` - Imported from CSV
      # - `CARRIER_DISCONNECT` - Automatically unsubscribed due to carrier disconnect
      sig do
        returns(
          PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::Source::TaggedSymbol
        )
      end
      attr_accessor :source

      # The subscription state:
      #
      # - `SUB` - Subscribed (user can receive marketing messages)
      # - `UNSUB` - Unsubscribed (user has opted out)
      sig do
        returns(
          PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::State::TaggedSymbol
        )
      end
      attr_accessor :state

      # The date and time when the subscription status was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Additional context about the state change (e.g., the keyword that was sent).
      sig { returns(T.nilable(String)) }
      attr_reader :reason

      sig { params(reason: String).void }
      attr_writer :reason

      sig do
        params(
          config_id: String,
          phone_number: String,
          source:
            PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::Source::OrSymbol,
          state:
            PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::State::OrSymbol,
          updated_at: Time,
          reason: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The subscription configuration ID.
        config_id:,
        # The phone number in E.164 format.
        phone_number:,
        # How the subscription state was changed:
        #
        # - `MO_KEYWORD` - User sent a keyword (STOP/START)
        # - `API` - Changed via API
        # - `CSV_IMPORT` - Imported from CSV
        # - `CARRIER_DISCONNECT` - Automatically unsubscribed due to carrier disconnect
        source:,
        # The subscription state:
        #
        # - `SUB` - Subscribed (user can receive marketing messages)
        # - `UNSUB` - Unsubscribed (user has opted out)
        state:,
        # The date and time when the subscription status was last updated.
        updated_at:,
        # Additional context about the state change (e.g., the keyword that was sent).
        reason: nil
      )
      end

      sig do
        override.returns(
          {
            config_id: String,
            phone_number: String,
            source:
              PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::Source::TaggedSymbol,
            state:
              PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::State::TaggedSymbol,
            updated_at: Time,
            reason: String
          }
        )
      end
      def to_hash
      end

      # How the subscription state was changed:
      #
      # - `MO_KEYWORD` - User sent a keyword (STOP/START)
      # - `API` - Changed via API
      # - `CSV_IMPORT` - Imported from CSV
      # - `CARRIER_DISCONNECT` - Automatically unsubscribed due to carrier disconnect
      module Source
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::Source
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MO_KEYWORD =
          T.let(
            :MO_KEYWORD,
            PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::Source::TaggedSymbol
          )
        API =
          T.let(
            :API,
            PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::Source::TaggedSymbol
          )
        CSV_IMPORT =
          T.let(
            :CSV_IMPORT,
            PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::Source::TaggedSymbol
          )
        CARRIER_DISCONNECT =
          T.let(
            :CARRIER_DISCONNECT,
            PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::Source::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::Source::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The subscription state:
      #
      # - `SUB` - Subscribed (user can receive marketing messages)
      # - `UNSUB` - Unsubscribed (user has opted out)
      module State
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::State
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUB =
          T.let(
            :SUB,
            PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::State::TaggedSymbol
          )
        UNSUB =
          T.let(
            :UNSUB,
            PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::State::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
