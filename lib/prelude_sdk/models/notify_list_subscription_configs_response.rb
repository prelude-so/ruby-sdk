# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#list_subscription_configs
    class NotifyListSubscriptionConfigsResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute configs
      #   A list of subscription management configurations.
      #
      #   @return [Array<PreludeSDK::Models::NotifyListSubscriptionConfigsResponse::Config>]
      required :configs,
               -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::NotifyListSubscriptionConfigsResponse::Config] }

      # @!attribute next_cursor
      #   Pagination cursor for the next page of results. Omitted if there are no more
      #   pages.
      #
      #   @return [String, nil]
      optional :next_cursor, String

      # @!method initialize(configs:, next_cursor: nil)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::NotifyListSubscriptionConfigsResponse} for more details.
      #
      #   @param configs [Array<PreludeSDK::Models::NotifyListSubscriptionConfigsResponse::Config>] A list of subscription management configurations.
      #
      #   @param next_cursor [String] Pagination cursor for the next page of results. Omitted if there are no more pag

      class Config < PreludeSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The subscription configuration ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute callback_url
        #   The URL to call when subscription status changes.
        #
        #   @return [String]
        required :callback_url, String

        # @!attribute created_at
        #   The date and time when the configuration was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute messages
        #   The subscription messages configuration.
        #
        #   @return [PreludeSDK::Models::NotifyListSubscriptionConfigsResponse::Config::Messages]
        required :messages, -> { PreludeSDK::Models::NotifyListSubscriptionConfigsResponse::Config::Messages }

        # @!attribute name
        #   The human-readable name for the subscription configuration.
        #
        #   @return [String]
        required :name, String

        # @!attribute updated_at
        #   The date and time when the configuration was last updated.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute mo_phone_numbers
        #   A list of phone numbers for receiving inbound messages.
        #
        #   @return [Array<PreludeSDK::Models::NotifyListSubscriptionConfigsResponse::Config::MoPhoneNumber>, nil]
        optional :mo_phone_numbers,
                 -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::NotifyListSubscriptionConfigsResponse::Config::MoPhoneNumber] }

        # @!method initialize(id:, callback_url:, created_at:, messages:, name:, updated_at:, mo_phone_numbers: nil)
        #   @param id [String] The subscription configuration ID.
        #
        #   @param callback_url [String] The URL to call when subscription status changes.
        #
        #   @param created_at [Time] The date and time when the configuration was created.
        #
        #   @param messages [PreludeSDK::Models::NotifyListSubscriptionConfigsResponse::Config::Messages] The subscription messages configuration.
        #
        #   @param name [String] The human-readable name for the subscription configuration.
        #
        #   @param updated_at [Time] The date and time when the configuration was last updated.
        #
        #   @param mo_phone_numbers [Array<PreludeSDK::Models::NotifyListSubscriptionConfigsResponse::Config::MoPhoneNumber>] A list of phone numbers for receiving inbound messages.

        # @see PreludeSDK::Models::NotifyListSubscriptionConfigsResponse::Config#messages
        class Messages < PreludeSDK::Internal::Type::BaseModel
          # @!attribute help_message
          #   Message sent when user requests help.
          #
          #   @return [String, nil]
          optional :help_message, String

          # @!attribute start_message
          #   Message sent when user subscribes.
          #
          #   @return [String, nil]
          optional :start_message, String

          # @!attribute stop_message
          #   Message sent when user unsubscribes.
          #
          #   @return [String, nil]
          optional :stop_message, String

          # @!method initialize(help_message: nil, start_message: nil, stop_message: nil)
          #   The subscription messages configuration.
          #
          #   @param help_message [String] Message sent when user requests help.
          #
          #   @param start_message [String] Message sent when user subscribes.
          #
          #   @param stop_message [String] Message sent when user unsubscribes.
        end

        class MoPhoneNumber < PreludeSDK::Internal::Type::BaseModel
          # @!attribute country_code
          #   The ISO 3166-1 alpha-2 country code.
          #
          #   @return [String]
          required :country_code, String

          # @!attribute phone_number
          #   The phone number in E.164 format for long codes, or short code format for short
          #   codes.
          #
          #   @return [String]
          required :phone_number, String

          # @!method initialize(country_code:, phone_number:)
          #   Some parameter documentations has been truncated, see
          #   {PreludeSDK::Models::NotifyListSubscriptionConfigsResponse::Config::MoPhoneNumber}
          #   for more details.
          #
          #   @param country_code [String] The ISO 3166-1 alpha-2 country code.
          #
          #   @param phone_number [String] The phone number in E.164 format for long codes, or short code format for short
        end
      end
    end
  end
end
