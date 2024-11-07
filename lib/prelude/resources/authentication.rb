# frozen_string_literal: true

module Prelude
  module Resources
    class Authentication
      # @return [Prelude::Resources::Authentication::Feedback]
      attr_reader :feedback

      # @param client [Prelude::Client]
      def initialize(client:)
        @client = client
        @feedback = Prelude::Resources::Authentication::Feedback.new(client: client)
      end

      # Send a code
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :customer_uuid Your customer UUID, which can be found in the API settings in the dashboard.
      #   @option params [String] :phone_number An E.164 formatted phone number to send the OTP to.
      #   @option params [String, nil] :app_realm The Android SMS Retriever API hash code that identifies your app. This allows
      #     you to automatically retrieve and fill the OTP code on Android devices.
      #   @option params [String, nil] :app_version The version of your application.
      #   @option params [String, nil] :callback_url A webhook URL to which delivery statuses will be sent.
      #   @option params [String, nil] :correlation_id A unique, user-defined identifier that will be included in webhook events
      #   @option params [String, nil] :device_id Unique identifier for the user's device. For Android, this corresponds to the
      #     `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
      #   @option params [String, nil] :device_model The model of the user's device.
      #   @option params [Symbol, DeviceType, nil] :device_type The type of device the user is using.
      #   @option params [String, nil] :ip The IP address of the user's device.
      #   @option params [Boolean, nil] :is_returning_user This signal should do more than just confirm if a user is returning to your app;
      #     it should provide a higher level of trust, indicating that the user is genuine.
      #     For more details, refer to [Signals](/guides/prevent-fraud#signals).
      #   @option params [String, nil] :locale A BCP-47 locale indicating the language the SMS should be sent to; if this is
      #     not set, the SMS will be sent to the language specified by the country code of
      #     the message. If we don't support the language set, the message will be sent in
      #     US English (en-US).
      #   @option params [String, nil] :os_version The version of the user's device operating system.
      #   @option params [String, nil] :sender_id The Sender ID to use when sending the message.
      #   @option params [String, nil] :template_id The template id associated with the message content variant to be sent.
      #
      # @param opts [Hash{Symbol => Object}, Prelude::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Prelude::Models::AuthenticationCreateResponse]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/authentication",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Prelude::Models::AuthenticationCreateResponse
        }
        @client.request(req, opts)
      end

      # Get authentication status
      #
      # @param auth_uuid [String] The UUID of the authentication.
      # @param opts [Hash{Symbol => Object}, Prelude::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Prelude::Models::AuthenticationRetrieveResponse]
      def retrieve(auth_uuid, opts = {})
        req = {
          method: :get,
          path: "/authentication/#{auth_uuid}",
          model: Prelude::Models::AuthenticationRetrieveResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
