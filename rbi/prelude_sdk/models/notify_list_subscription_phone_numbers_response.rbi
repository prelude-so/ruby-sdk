# typed: strong

module PreludeSDK
  module Models
    class NotifyListSubscriptionPhoneNumbersResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # A list of phone numbers and their subscription statuses.
      sig do
        returns(
          T::Array[
            PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber
          ]
        )
      end
      attr_accessor :phone_numbers

      # Pagination cursor for the next page of results. Omitted if there are no more
      # pages.
      sig { returns(T.nilable(String)) }
      attr_reader :next_cursor

      sig { params(next_cursor: String).void }
      attr_writer :next_cursor

      sig do
        params(
          phone_numbers:
            T::Array[
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::OrHash
            ],
          next_cursor: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of phone numbers and their subscription statuses.
        phone_numbers:,
        # Pagination cursor for the next page of results. Omitted if there are no more
        # pages.
        next_cursor: nil
      )
      end

      sig do
        override.returns(
          {
            phone_numbers:
              T::Array[
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber
              ],
            next_cursor: String
          }
        )
      end
      def to_hash
      end

      class PhoneNumber < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber,
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
            PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::Source::TaggedSymbol
          )
        end
        attr_accessor :source

        # The subscription state:
        #
        # - `SUB` - Subscribed (user can receive marketing messages)
        # - `UNSUB` - Unsubscribed (user has opted out)
        sig do
          returns(
            PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::State::TaggedSymbol
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
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::Source::OrSymbol,
            state:
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::State::OrSymbol,
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
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::Source::TaggedSymbol,
              state:
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::State::TaggedSymbol,
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
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::Source
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MO_KEYWORD =
            T.let(
              :MO_KEYWORD,
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::Source::TaggedSymbol
            )
          API =
            T.let(
              :API,
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::Source::TaggedSymbol
            )
          CSV_IMPORT =
            T.let(
              :CSV_IMPORT,
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::Source::TaggedSymbol
            )
          CARRIER_DISCONNECT =
            T.let(
              :CARRIER_DISCONNECT,
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::Source::TaggedSymbol
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
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::State
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUB =
            T.let(
              :SUB,
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::State::TaggedSymbol
            )
          UNSUB =
            T.let(
              :UNSUB,
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
