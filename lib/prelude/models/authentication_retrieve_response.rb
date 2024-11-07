# frozen_string_literal: true

module Prelude
  module Models
    class AuthenticationRetrieveResponse < Prelude::BaseModel
      # @!attribute [rw] correlation_id
      #   A unique, user-defined identifier that will be included in webhook events.
      #   @return [String]
      optional :correlation_id, String

      # @!attribute [rw] created_at
      #   @return [Time]
      optional :created_at, Time

      # @!attribute [rw] events
      #   Represents a collection of events that occur during the authentication process. Each event captures specific actions and outcomes related to the authentication attempts, checks, delivery statuses, and balance updates. The array can contain different types of events, each with its own structure and properties.
      #   @return [Array<Prelude::Models::AuthenticationRetrieveResponse::Event::UnnamedTypeWithunionParent0, Prelude::Models::AuthenticationRetrieveResponse::Event::UnnamedTypeWithunionParent1, Prelude::Models::AuthenticationRetrieveResponse::Event::UnnamedTypeWithunionParent2, Prelude::Models::AuthenticationRetrieveResponse::Event::UnnamedTypeWithunionParent3>]
      optional :events, Prelude::ArrayOf.new(Prelude::Unknown)

      # @!attribute [rw] phone_number
      #   An E.164 formatted phone number.
      #   @return [String]
      optional :phone_number, String

      # @!attribute [rw] signals
      #   [Signals](/guides/prevent-fraud#signals) are data points used to distinguish between fraudulent and legitimate users.
      #   @return [Prelude::Models::AuthenticationRetrieveResponse::Signals]
      optional :signals, -> { Prelude::Models::AuthenticationRetrieveResponse::Signals }

      # @!attribute [rw] template_id
      #   The template id associated with the message content variant to be sent.
      #   @return [String]
      optional :template_id, String

      # @!attribute [rw] uuid
      #   The UUID of the corresponding authentication.
      #   @return [String]
      optional :uuid, String

      class Signals < Prelude::BaseModel
        # @!attribute [rw] app_realm
        #   The Android SMS Retriever API hash code that identifies your app. This allows you to automatically retrieve and fill the OTP code on Android devices.
        #   @return [String]
        optional :app_realm, String

        # @!attribute [rw] app_version
        #   The version of your application.
        #   @return [String]
        optional :app_version, String

        # @!attribute [rw] device_id
        #   Unique identifier for the user's device. For Android, this corresponds to the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #   @return [String]
        optional :device_id, String

        # @!attribute [rw] device_model
        #   The model of the user's device.
        #   @return [String]
        optional :device_model, String

        # @!attribute [rw] device_type
        #   The type of device the user is using.
        #   @return [Symbol, Prelude::Models::AuthenticationRetrieveResponse::Signals::DeviceType]
        optional :device_type,
                 enum: -> {
                   Prelude::Models::AuthenticationRetrieveResponse::Signals::DeviceType
                 }

        # @!attribute [rw] ip
        #   The IP address of the user's device.
        #   @return [String]
        optional :ip, String

        # @!attribute [rw] is_returning_user
        #   This signal should do more than just confirm if a user is returning to your app; it should provide a higher level of trust, indicating that the user is genuine. For more details, refer to [Signals](/guides/prevent-fraud#signals).
        #   @return [Boolean]
        optional :is_returning_user, Prelude::BooleanModel

        # @!attribute [rw] os_version
        #   The version of the user's device operating system.
        #   @return [String]
        optional :os_version, String

        # The type of device the user is using.
        class DeviceType < Prelude::Enum
          IOS = :IOS
          ANDROID = :ANDROID
          WEB = :WEB
        end

        # @!parse
        #   # Create a new instance of Signals from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :app_realm The Android SMS Retriever API hash code that identifies your app. This allows
        #   #     you to automatically retrieve and fill the OTP code on Android devices.
        #   #   @option data [String, nil] :app_version The version of your application.
        #   #   @option data [String, nil] :device_id Unique identifier for the user's device. For Android, this corresponds to the
        #   #     `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #   #   @option data [String, nil] :device_model The model of the user's device.
        #   #   @option data [String, nil] :device_type The type of device the user is using.
        #   #   @option data [String, nil] :ip The IP address of the user's device.
        #   #   @option data [Hash, nil] :is_returning_user This signal should do more than just confirm if a user is returning to your app;
        #   #     it should provide a higher level of trust, indicating that the user is genuine.
        #   #     For more details, refer to [Signals](/guides/prevent-fraud#signals).
        #   #   @option data [String, nil] :os_version The version of the user's device operating system.
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of AuthenticationRetrieveResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String, nil] :correlation_id A unique, user-defined identifier that will be included in webhook events.
      #   #   @option data [String, nil] :created_at
      #   #   @option data [Array<Object>, nil] :events Represents a collection of events that occur during the authentication process.
      #   #     Each event captures specific actions and outcomes related to the authentication
      #   #     attempts, checks, delivery statuses, and balance updates. The array can contain
      #   #     different types of events, each with its own structure and properties.
      #   #   @option data [String, nil] :phone_number An E.164 formatted phone number.
      #   #   @option data [Object, nil] :signals [Signals](/guides/prevent-fraud#signals) are data points used to distinguish
      #   #     between fraudulent and legitimate users.
      #   #   @option data [String, nil] :template_id The template id associated with the message content variant to be sent.
      #   #   @option data [String, nil] :uuid The UUID of the corresponding authentication.
      #   def initialize(data = {}) = super
    end
  end
end
