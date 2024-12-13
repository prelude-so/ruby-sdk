# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationCreateParams < PreludeSDK::BaseModel
      # @!attribute [rw] target
      #   The target. Currently this can only be an E.164 formatted phone number.
      #   @return [PreludeSDK::Models::VerificationCreateParams::Target]
      required :target, -> { PreludeSDK::Models::VerificationCreateParams::Target }

      # @!attribute [rw] metadata
      #   The metadata for this verification. This object will be returned with every response or webhook sent that refers to this verification.
      #   @return [PreludeSDK::Models::VerificationCreateParams::Metadata]
      optional :metadata, -> { PreludeSDK::Models::VerificationCreateParams::Metadata }

      # @!attribute [rw] options
      #   Verification options
      #   @return [PreludeSDK::Models::VerificationCreateParams::Options]
      optional :options, -> { PreludeSDK::Models::VerificationCreateParams::Options }

      # @!attribute [rw] signals
      #   The signals used for anti-fraud.
      #   @return [PreludeSDK::Models::VerificationCreateParams::Signals]
      optional :signals, -> { PreludeSDK::Models::VerificationCreateParams::Signals }

      class Target < PreludeSDK::BaseModel
        # @!attribute [rw] type
        #   The type of the target. Currently this can only be "phone_number".
        #   @return [Symbol, PreludeSDK::Models::VerificationCreateParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::VerificationCreateParams::Target::Type }

        # @!attribute [rw] value
        #   An E.164 formatted phone number to verify.
        #   @return [String]
        required :value, String

        # The type of the target. Currently this can only be "phone_number".
        class Type < PreludeSDK::Enum
          PHONE_NUMBER = :phone_number
        end

        # @!parse
        #   # Create a new instance of Target from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :type The type of the target. Currently this can only be "phone_number".
        #   #   @option data [String] :value An E.164 formatted phone number to verify.
        #   def initialize(data = {}) = super
      end

      class Metadata < PreludeSDK::BaseModel
        # @!attribute [rw] correlation_id
        #   A user-defined identifier to correlate this verification with.
        #   @return [String]
        optional :correlation_id, String

        # @!parse
        #   # Create a new instance of Metadata from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :correlation_id A user-defined identifier to correlate this verification with.
        #   def initialize(data = {}) = super
      end

      class Options < PreludeSDK::BaseModel
        # @!attribute [rw] app_realm
        #   The Android SMS Retriever API hash code that identifies your app. This allows you to automatically retrieve and fill the OTP code on Android devices.
        #   @return [String]
        optional :app_realm, String

        # @!attribute [rw] custom_code
        #   The custom code to use for OTP verification. This feature is only available for compatibility purposes and subject to Prelude’s approval. Contact us to discuss your use case.
        #   @return [String]
        optional :custom_code, String

        # @!attribute [rw] locale
        #   A BCP-47 formatted locale string with the language the text message will be sent to. If there's no locale set, the language will be determined by the country code of the phone number. If the language specified doesn't exist, it defaults to US English.
        #   @return [String]
        optional :locale, String

        # @!attribute [rw] sender_id
        #   The Sender ID to use for this message. The Sender ID needs to be enabled by Prelude.
        #   @return [String]
        optional :sender_id, String

        # @!attribute [rw] template_id
        #   The identifier of a verification settings template. It is used to be able to switch behavior for specific use cases. Contact us if you need to use this functionality.
        #   @return [String]
        optional :template_id, String

        # @!parse
        #   # Create a new instance of Options from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :app_realm The Android SMS Retriever API hash code that identifies your app. This allows
        #   #     you to automatically retrieve and fill the OTP code on Android devices.
        #   #   @option data [String, nil] :custom_code The custom code to use for OTP verification. This feature is only available for
        #   #     compatibility purposes and subject to Prelude’s approval. Contact us to discuss
        #   #     your use case.
        #   #   @option data [String, nil] :locale A BCP-47 formatted locale string with the language the text message will be sent
        #   #     to. If there's no locale set, the language will be determined by the country
        #   #     code of the phone number. If the language specified doesn't exist, it defaults
        #   #     to US English.
        #   #   @option data [String, nil] :sender_id The Sender ID to use for this message. The Sender ID needs to be enabled by
        #   #     Prelude.
        #   #   @option data [String, nil] :template_id The identifier of a verification settings template. It is used to be able to
        #   #     switch behavior for specific use cases. Contact us if you need to use this
        #   #     functionality.
        #   def initialize(data = {}) = super
      end

      class Signals < PreludeSDK::BaseModel
        # @!attribute [rw] app_version
        #   The version of your application.
        #   @return [String]
        optional :app_version, String

        # @!attribute [rw] device_id
        #   The unique identifier for the user's device. For Android, this corresponds to the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #   @return [String]
        optional :device_id, String

        # @!attribute [rw] device_model
        #   The model of the user's device.
        #   @return [String]
        optional :device_model, String

        # @!attribute [rw] device_platform
        #   The type of the user's device.
        #   @return [Symbol, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform]
        optional :device_platform,
                 enum: -> { PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform }

        # @!attribute [rw] ip
        #   The IP address of the user's device.
        #   @return [String]
        optional :ip, String

        # @!attribute [rw] is_trusted_user
        #   This signal should provide a higher level of trust, indicating that the user is genuine. For more details, refer to [Signals](/guides/prevent-fraud#signals).
        #   @return [Boolean]
        optional :is_trusted_user, PreludeSDK::BooleanModel

        # @!attribute [rw] os_version
        #   The version of the user's device operating system.
        #   @return [String]
        optional :os_version, String

        # The type of the user's device.
        class DevicePlatform < PreludeSDK::Enum
          ANDROID = :android
          IOS = :ios
          IPADOS = :ipados
          TVOS = :tvos
          WEB = :web
        end

        # @!parse
        #   # Create a new instance of Signals from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :app_version The version of your application.
        #   #   @option data [String, nil] :device_id The unique identifier for the user's device. For Android, this corresponds to
        #   #     the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #   #   @option data [String, nil] :device_model The model of the user's device.
        #   #   @option data [String, nil] :device_platform The type of the user's device.
        #   #   @option data [String, nil] :ip The IP address of the user's device.
        #   #   @option data [Hash, nil] :is_trusted_user This signal should provide a higher level of trust, indicating that the user is
        #   #     genuine. For more details, refer to [Signals](/guides/prevent-fraud#signals).
        #   #   @option data [String, nil] :os_version The version of the user's device operating system.
        #   def initialize(data = {}) = super
      end
    end
  end
end
