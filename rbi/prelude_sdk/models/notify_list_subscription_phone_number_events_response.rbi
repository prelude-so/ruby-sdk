# typed: strong

module PreludeSDK
  module Models
    class NotifyListSubscriptionPhoneNumberEventsResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # A list of subscription events (status changes) ordered by timestamp descending.
      sig do
        returns(
          T::Array[
            PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event
          ]
        )
      end
      attr_accessor :events

      # Pagination cursor for the next page of results. Omitted if there are no more
      # pages.
      sig { returns(T.nilable(String)) }
      attr_reader :next_cursor

      sig { params(next_cursor: String).void }
      attr_writer :next_cursor

      sig do
        params(
          events:
            T::Array[
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::OrHash
            ],
          next_cursor: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of subscription events (status changes) ordered by timestamp descending.
        events:,
        # Pagination cursor for the next page of results. Omitted if there are no more
        # pages.
        next_cursor: nil
      )
      end

      sig do
        override.returns(
          {
            events:
              T::Array[
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event
              ],
            next_cursor: String
          }
        )
      end
      def to_hash
      end

      class Event < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event,
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
            PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::Source::TaggedSymbol
          )
        end
        attr_accessor :source

        # The subscription state after this event:
        #
        # - `SUB` - Subscribed (user can receive marketing messages)
        # - `UNSUB` - Unsubscribed (user has opted out)
        sig do
          returns(
            PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::State::TaggedSymbol
          )
        end
        attr_accessor :state

        # The date and time when the event occurred.
        sig { returns(Time) }
        attr_accessor :timestamp

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
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::Source::OrSymbol,
            state:
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::State::OrSymbol,
            timestamp: Time,
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
          # The subscription state after this event:
          #
          # - `SUB` - Subscribed (user can receive marketing messages)
          # - `UNSUB` - Unsubscribed (user has opted out)
          state:,
          # The date and time when the event occurred.
          timestamp:,
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
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::Source::TaggedSymbol,
              state:
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::State::TaggedSymbol,
              timestamp: Time,
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
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::Source
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MO_KEYWORD =
            T.let(
              :MO_KEYWORD,
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::Source::TaggedSymbol
            )
          API =
            T.let(
              :API,
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::Source::TaggedSymbol
            )
          CSV_IMPORT =
            T.let(
              :CSV_IMPORT,
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::Source::TaggedSymbol
            )
          CARRIER_DISCONNECT =
            T.let(
              :CARRIER_DISCONNECT,
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::Source::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The subscription state after this event:
        #
        # - `SUB` - Subscribed (user can receive marketing messages)
        # - `UNSUB` - Unsubscribed (user has opted out)
        module State
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::State
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUB =
            T.let(
              :SUB,
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::State::TaggedSymbol
            )
          UNSUB =
            T.let(
              :UNSUB,
              PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::State::TaggedSymbol
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
