# typed: strong

module PreludeSDK
  module Resources
    class Notify
      # Retrieve a specific subscription management configuration by its ID.
      sig do
        params(
          config_id: String,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(PreludeSDK::Models::NotifyGetSubscriptionConfigResponse)
      end
      def get_subscription_config(
        # The subscription configuration ID
        config_id,
        request_options: {}
      )
      end

      # Retrieve the current subscription status for a specific phone number within a
      # subscription configuration.
      sig do
        params(
          phone_number: String,
          config_id: String,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse)
      end
      def get_subscription_phone_number(
        # The phone number in E.164 format (e.g., +33612345678)
        phone_number,
        # The subscription configuration ID
        config_id:,
        request_options: {}
      )
      end

      # Retrieve a paginated list of subscription management configurations for your
      # account.
      #
      # Each configuration represents a subscription management setup with phone numbers
      # for receiving opt-out/opt-in requests and a callback URL for webhook events.
      sig do
        params(
          cursor: String,
          limit: Integer,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(PreludeSDK::Models::NotifyListSubscriptionConfigsResponse)
      end
      def list_subscription_configs(
        # Pagination cursor from the previous response
        cursor: nil,
        # Maximum number of configurations to return per page
        limit: nil,
        request_options: {}
      )
      end

      # Retrieve a paginated list of subscription events (status changes) for a specific
      # phone number within a subscription configuration.
      #
      # Events are ordered by timestamp in descending order (most recent first).
      sig do
        params(
          phone_number: String,
          config_id: String,
          cursor: String,
          limit: Integer,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(
          PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse
        )
      end
      def list_subscription_phone_number_events(
        # Path param: The phone number in E.164 format (e.g., +33612345678)
        phone_number,
        # Path param: The subscription configuration ID
        config_id:,
        # Query param: Pagination cursor from the previous response
        cursor: nil,
        # Query param: Maximum number of events to return per page
        limit: nil,
        request_options: {}
      )
      end

      # Retrieve a paginated list of phone numbers and their subscription statuses for a
      # specific subscription configuration.
      #
      # You can optionally filter by subscription state (SUB or UNSUB).
      sig do
        params(
          config_id: String,
          cursor: String,
          limit: Integer,
          state:
            PreludeSDK::NotifyListSubscriptionPhoneNumbersParams::State::OrSymbol,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(
          PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse
        )
      end
      def list_subscription_phone_numbers(
        # The subscription configuration ID
        config_id,
        # Pagination cursor from the previous response
        cursor: nil,
        # Maximum number of phone numbers to return per page
        limit: nil,
        # Filter by subscription state
        state: nil,
        request_options: {}
      )
      end

      # Send transactional and marketing messages to your users via SMS and WhatsApp
      # with automatic compliance enforcement.
      sig do
        params(
          template_id: String,
          to: String,
          callback_url: String,
          correlation_id: String,
          expires_at: Time,
          from: String,
          locale: String,
          preferred_channel:
            PreludeSDK::NotifySendParams::PreferredChannel::OrSymbol,
          schedule_at: Time,
          variables: T::Hash[Symbol, String],
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(PreludeSDK::Models::NotifySendResponse)
      end
      def send_(
        # The template identifier configured by your Customer Success team.
        template_id:,
        # The recipient's phone number in E.164 format.
        to:,
        # The URL where webhooks will be sent for message delivery events.
        callback_url: nil,
        # A user-defined identifier to correlate this message with your internal systems.
        # It is returned in the response and any webhook events that refer to this
        # message.
        correlation_id: nil,
        # The message expiration date in RFC3339 format. The message will not be sent if
        # this time is reached.
        expires_at: nil,
        # The Sender ID. Must be approved for your account.
        from: nil,
        # A BCP-47 formatted locale string with the language the text message will be sent
        # to. If there's no locale set, the language will be determined by the country
        # code of the phone number. If the language specified doesn't exist, the default
        # set on the template will be used.
        locale: nil,
        # The preferred channel to be used in priority for message delivery. If the
        # channel is unavailable, the system will fallback to other available channels.
        preferred_channel: nil,
        # Schedule the message for future delivery in RFC3339 format. Marketing messages
        # can be scheduled up to 90 days in advance and will be automatically adjusted for
        # compliance with local time window restrictions.
        schedule_at: nil,
        # The variables to be replaced in the template.
        variables: nil,
        request_options: {}
      )
      end

      # Send the same message to multiple recipients in a single request.
      sig do
        params(
          template_id: String,
          to: T::Array[String],
          callback_url: String,
          correlation_id: String,
          expires_at: Time,
          from: String,
          locale: String,
          preferred_channel:
            PreludeSDK::NotifySendBatchParams::PreferredChannel::OrSymbol,
          schedule_at: Time,
          variables: T::Hash[Symbol, String],
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(PreludeSDK::Models::NotifySendBatchResponse)
      end
      def send_batch(
        # The template identifier configured by your Customer Success team.
        template_id:,
        # The list of recipients' phone numbers in E.164 format.
        to:,
        # The URL where webhooks will be sent for delivery events.
        callback_url: nil,
        # A user-defined identifier to correlate this request with your internal systems.
        correlation_id: nil,
        # The message expiration date in RFC3339 format. Messages will not be sent after
        # this time.
        expires_at: nil,
        # The Sender ID. Must be approved for your account.
        from: nil,
        # A BCP-47 formatted locale string.
        locale: nil,
        # Preferred channel for delivery. If unavailable, automatic fallback applies.
        preferred_channel: nil,
        # Schedule delivery in RFC3339 format. Marketing sends may be adjusted to comply
        # with local time windows.
        schedule_at: nil,
        # The variables to be replaced in the template.
        variables: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
