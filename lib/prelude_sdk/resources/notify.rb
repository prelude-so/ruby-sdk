# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Notify
      # Retrieve a specific subscription management configuration by its ID.
      #
      # @overload get_subscription_config(config_id, request_options: {})
      #
      # @param config_id [String] The subscription configuration ID
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::NotifyGetSubscriptionConfigResponse]
      #
      # @see PreludeSDK::Models::NotifyGetSubscriptionConfigParams
      def get_subscription_config(config_id, params = {})
        @client.request(
          method: :get,
          path: ["v2/notify/management/subscriptions/%1$s", config_id],
          model: PreludeSDK::Models::NotifyGetSubscriptionConfigResponse,
          options: params[:request_options]
        )
      end

      # Retrieve the current subscription status for a specific phone number within a
      # subscription configuration.
      #
      # @overload get_subscription_phone_number(phone_number, config_id:, request_options: {})
      #
      # @param phone_number [String] The phone number in E.164 format (e.g., +33612345678)
      #
      # @param config_id [String] The subscription configuration ID
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse]
      #
      # @see PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberParams
      def get_subscription_phone_number(phone_number, params)
        parsed, options = PreludeSDK::NotifyGetSubscriptionPhoneNumberParams.dump_request(params)
        config_id =
          parsed.delete(:config_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["v2/notify/management/subscriptions/%1$s/phone_numbers/%2$s", config_id, phone_number],
          model: PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse,
          options: options
        )
      end

      # Retrieve a paginated list of subscription management configurations for your
      # account.
      #
      # Each configuration represents a subscription management setup with phone numbers
      # for receiving opt-out/opt-in requests and a callback URL for webhook events.
      #
      # @overload list_subscription_configs(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String] Pagination cursor from the previous response
      #
      # @param limit [Integer] Maximum number of configurations to return per page
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::NotifyListSubscriptionConfigsResponse]
      #
      # @see PreludeSDK::Models::NotifyListSubscriptionConfigsParams
      def list_subscription_configs(params = {})
        parsed, options = PreludeSDK::NotifyListSubscriptionConfigsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v2/notify/management/subscriptions",
          query: parsed,
          model: PreludeSDK::Models::NotifyListSubscriptionConfigsResponse,
          options: options
        )
      end

      # Retrieve a paginated list of subscription events (status changes) for a specific
      # phone number within a subscription configuration.
      #
      # Events are ordered by timestamp in descending order (most recent first).
      #
      # @overload list_subscription_phone_number_events(phone_number, config_id:, cursor: nil, limit: nil, request_options: {})
      #
      # @param phone_number [String] Path param: The phone number in E.164 format (e.g., +33612345678)
      #
      # @param config_id [String] Path param: The subscription configuration ID
      #
      # @param cursor [String] Query param: Pagination cursor from the previous response
      #
      # @param limit [Integer] Query param: Maximum number of events to return per page
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse]
      #
      # @see PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsParams
      def list_subscription_phone_number_events(phone_number, params)
        parsed, options = PreludeSDK::NotifyListSubscriptionPhoneNumberEventsParams.dump_request(params)
        config_id =
          parsed.delete(:config_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: [
            "v2/notify/management/subscriptions/%1$s/phone_numbers/%2$s/events",
            config_id,
            phone_number
          ],
          query: parsed,
          model: PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse,
          options: options
        )
      end

      # Retrieve a paginated list of phone numbers and their subscription statuses for a
      # specific subscription configuration.
      #
      # You can optionally filter by subscription state (SUB or UNSUB).
      #
      # @overload list_subscription_phone_numbers(config_id, cursor: nil, limit: nil, state: nil, request_options: {})
      #
      # @param config_id [String] The subscription configuration ID
      #
      # @param cursor [String] Pagination cursor from the previous response
      #
      # @param limit [Integer] Maximum number of phone numbers to return per page
      #
      # @param state [Symbol, PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersParams::State] Filter by subscription state
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse]
      #
      # @see PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersParams
      def list_subscription_phone_numbers(config_id, params = {})
        parsed, options = PreludeSDK::NotifyListSubscriptionPhoneNumbersParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v2/notify/management/subscriptions/%1$s/phone_numbers", config_id],
          query: parsed,
          model: PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {PreludeSDK::Models::NotifySendParams} for more details.
      #
      # Send transactional and marketing messages to your users via SMS and WhatsApp
      # with automatic compliance enforcement.
      #
      # @overload send_(template_id:, to:, callback_url: nil, correlation_id: nil, expires_at: nil, from: nil, locale: nil, preferred_channel: nil, schedule_at: nil, variables: nil, request_options: {})
      #
      # @param template_id [String] The template identifier configured by your Customer Success team.
      #
      # @param to [String] The recipient's phone number in E.164 format.
      #
      # @param callback_url [String] The URL where webhooks will be sent for message delivery events.
      #
      # @param correlation_id [String] A user-defined identifier to correlate this message with your internal systems.
      #
      # @param expires_at [Time] The message expiration date in RFC3339 format. The message will not be sent if t
      #
      # @param from [String] The Sender ID. Must be approved for your account.
      #
      # @param locale [String] A BCP-47 formatted locale string with the language the text message will be sent
      #
      # @param preferred_channel [Symbol, PreludeSDK::Models::NotifySendParams::PreferredChannel] The preferred channel to be used in priority for message delivery. If the channe
      #
      # @param schedule_at [Time] Schedule the message for future delivery in RFC3339 format. Marketing messages c
      #
      # @param variables [Hash{Symbol=>String}] The variables to be replaced in the template.
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::NotifySendResponse]
      #
      # @see PreludeSDK::Models::NotifySendParams
      def send_(params)
        parsed, options = PreludeSDK::NotifySendParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/notify",
          body: parsed,
          model: PreludeSDK::Models::NotifySendResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {PreludeSDK::Models::NotifySendBatchParams} for more details.
      #
      # Send the same message to multiple recipients in a single request.
      #
      # @overload send_batch(template_id:, to:, callback_url: nil, correlation_id: nil, expires_at: nil, from: nil, locale: nil, preferred_channel: nil, schedule_at: nil, variables: nil, request_options: {})
      #
      # @param template_id [String] The template identifier configured by your Customer Success team.
      #
      # @param to [Array<String>] The list of recipients' phone numbers in E.164 format.
      #
      # @param callback_url [String] The URL where webhooks will be sent for delivery events.
      #
      # @param correlation_id [String] A user-defined identifier to correlate this request with your internal systems.
      #
      # @param expires_at [Time] The message expiration date in RFC3339 format. Messages will not be sent after t
      #
      # @param from [String] The Sender ID. Must be approved for your account.
      #
      # @param locale [String] A BCP-47 formatted locale string.
      #
      # @param preferred_channel [Symbol, PreludeSDK::Models::NotifySendBatchParams::PreferredChannel] Preferred channel for delivery. If unavailable, automatic fallback applies.
      #
      # @param schedule_at [Time] Schedule delivery in RFC3339 format. Marketing sends may be adjusted to comply w
      #
      # @param variables [Hash{Symbol=>String}] The variables to be replaced in the template.
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::NotifySendBatchResponse]
      #
      # @see PreludeSDK::Models::NotifySendBatchParams
      def send_batch(params)
        parsed, options = PreludeSDK::NotifySendBatchParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/notify/batch",
          body: parsed,
          model: PreludeSDK::Models::NotifySendBatchResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [PreludeSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
