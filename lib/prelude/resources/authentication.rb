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
      #   @option params [String, nil] :device_id Unique identifier for the user's device. For Android, this corresponds to the
      #     `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
      #   @option params [String, nil] :device_model The model of the user's device.
      #   @option params [Symbol, DeviceType, nil] :device_type The type of device the user is using.
      #   @option params [String, nil] :ip The IP address of the user's device.
      #   @option params [Boolean, nil] :is_returning_user Whether the user is a returning user on your app.
      #   @option params [String, nil] :os_version The version of the user's device operating system.
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
    end
  end
end
