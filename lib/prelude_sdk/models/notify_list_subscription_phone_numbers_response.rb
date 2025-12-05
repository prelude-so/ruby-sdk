# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#list_subscription_phone_numbers
    class NotifyListSubscriptionPhoneNumbersResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute phone_numbers
      #   A list of phone numbers and their subscription statuses.
      #
      #   @return [Array<PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber>]
      required :phone_numbers,
               -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber] }

      # @!attribute next_cursor
      #   Pagination cursor for the next page of results. Omitted if there are no more
      #   pages.
      #
      #   @return [String, nil]
      optional :next_cursor, String

      # @!method initialize(phone_numbers:, next_cursor: nil)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse} for more
      #   details.
      #
      #   @param phone_numbers [Array<PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber>] A list of phone numbers and their subscription statuses.
      #
      #   @param next_cursor [String] Pagination cursor for the next page of results. Omitted if there are no more pag

      class PhoneNumber < PreludeSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::Source]
        required :source,
                 enum: -> { PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::Source }

        # @!attribute state
        #   The subscription state:
        #
        #   - `SUB` - Subscribed (user can receive marketing messages)
        #   - `UNSUB` - Unsubscribed (user has opted out)
        #
        #   @return [Symbol, PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::State]
        required :state,
                 enum: -> { PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::State }

        # @!attribute updated_at
        #   The date and time when the subscription status was last updated.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute reason
        #   Additional context about the state change (e.g., the keyword that was sent).
        #
        #   @return [String, nil]
        optional :reason, String

        # @!method initialize(config_id:, phone_number:, source:, state:, updated_at:, reason: nil)
        #   Some parameter documentations has been truncated, see
        #   {PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber}
        #   for more details.
        #
        #   @param config_id [String] The subscription configuration ID.
        #
        #   @param phone_number [String] The phone number in E.164 format.
        #
        #   @param source [Symbol, PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::Source] How the subscription state was changed:
        #
        #   @param state [Symbol, PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber::State] The subscription state:
        #
        #   @param updated_at [Time] The date and time when the subscription status was last updated.
        #
        #   @param reason [String] Additional context about the state change (e.g., the keyword that was sent).

        # How the subscription state was changed:
        #
        # - `MO_KEYWORD` - User sent a keyword (STOP/START)
        # - `API` - Changed via API
        # - `CSV_IMPORT` - Imported from CSV
        # - `CARRIER_DISCONNECT` - Automatically unsubscribed due to carrier disconnect
        #
        # @see PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber#source
        module Source
          extend PreludeSDK::Internal::Type::Enum

          MO_KEYWORD = :MO_KEYWORD
          API = :API
          CSV_IMPORT = :CSV_IMPORT
          CARRIER_DISCONNECT = :CARRIER_DISCONNECT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The subscription state:
        #
        # - `SUB` - Subscribed (user can receive marketing messages)
        # - `UNSUB` - Unsubscribed (user has opted out)
        #
        # @see PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber#state
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
