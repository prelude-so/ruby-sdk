# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#list_subscription_phone_number_events
    class NotifyListSubscriptionPhoneNumberEventsResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute events
      #   A list of subscription events (status changes) ordered by timestamp descending.
      #
      #   @return [Array<PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event>]
      required :events,
               -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event] }

      # @!attribute next_cursor
      #   Pagination cursor for the next page of results. Omitted if there are no more
      #   pages.
      #
      #   @return [String, nil]
      optional :next_cursor, String

      # @!method initialize(events:, next_cursor: nil)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse} for more
      #   details.
      #
      #   @param events [Array<PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event>] A list of subscription events (status changes) ordered by timestamp descending.
      #
      #   @param next_cursor [String] Pagination cursor for the next page of results. Omitted if there are no more pag

      class Event < PreludeSDK::Internal::Type::BaseModel
        # @!attribute config_id
        #   The subscription configuration ID.
        #
        #   @return [String]
        required :config_id, String

        # @!attribute phone_number
        #   The phone number in E.164 format.
        #
        #   @return [String]
        required :phone_number, String

        # @!attribute source
        #   How the subscription state was changed:
        #
        #   - `MO_KEYWORD` - User sent a keyword (STOP/START)
        #   - `API` - Changed via API
        #   - `CSV_IMPORT` - Imported from CSV
        #   - `CARRIER_DISCONNECT` - Automatically unsubscribed due to carrier disconnect
        #
        #   @return [Symbol, PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::Source]
        required :source,
                 enum: -> { PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::Source }

        # @!attribute state
        #   The subscription state after this event:
        #
        #   - `SUB` - Subscribed (user can receive marketing messages)
        #   - `UNSUB` - Unsubscribed (user has opted out)
        #
        #   @return [Symbol, PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::State]
        required :state,
                 enum: -> { PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::State }

        # @!attribute timestamp
        #   The date and time when the event occurred.
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute reason
        #   Additional context about the state change (e.g., the keyword that was sent).
        #
        #   @return [String, nil]
        optional :reason, String

        # @!method initialize(config_id:, phone_number:, source:, state:, timestamp:, reason: nil)
        #   Some parameter documentations has been truncated, see
        #   {PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event} for
        #   more details.
        #
        #   @param config_id [String] The subscription configuration ID.
        #
        #   @param phone_number [String] The phone number in E.164 format.
        #
        #   @param source [Symbol, PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::Source] How the subscription state was changed:
        #
        #   @param state [Symbol, PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event::State] The subscription state after this event:
        #
        #   @param timestamp [Time] The date and time when the event occurred.
        #
        #   @param reason [String] Additional context about the state change (e.g., the keyword that was sent).

        # How the subscription state was changed:
        #
        # - `MO_KEYWORD` - User sent a keyword (STOP/START)
        # - `API` - Changed via API
        # - `CSV_IMPORT` - Imported from CSV
        # - `CARRIER_DISCONNECT` - Automatically unsubscribed due to carrier disconnect
        #
        # @see PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event#source
        module Source
          extend PreludeSDK::Internal::Type::Enum

          MO_KEYWORD = :MO_KEYWORD
          API = :API
          CSV_IMPORT = :CSV_IMPORT
          CARRIER_DISCONNECT = :CARRIER_DISCONNECT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The subscription state after this event:
        #
        # - `SUB` - Subscribed (user can receive marketing messages)
        # - `UNSUB` - Unsubscribed (user has opted out)
        #
        # @see PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event#state
        module State
          extend PreludeSDK::Internal::Type::Enum

          SUB = :SUB
          UNSUB = :UNSUB

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
