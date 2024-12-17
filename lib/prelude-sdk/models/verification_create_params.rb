# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationCreateParams < PreludeSDK::BaseModel
      # @!attribute target
      #   The target. Currently this can only be an E.164 formatted phone number.
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Target]
      required :target, -> { PreludeSDK::Models::VerificationCreateParams::Target }

      # @!attribute metadata
      #   The metadata for this verification. This object will be returned with every response or webhook sent that refers to this verification.
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Metadata]
      optional :metadata, -> { PreludeSDK::Models::VerificationCreateParams::Metadata }

      # @!attribute options
      #   Verification options
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Options]
      optional :options, -> { PreludeSDK::Models::VerificationCreateParams::Options }

      # @!attribute signals
      #   The signals used for anti-fraud.
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Signals]
      optional :signals, -> { PreludeSDK::Models::VerificationCreateParams::Signals }

      # @!parse
      #   # @param target [Object] The target. Currently this can only be an E.164 formatted phone number.
      #   #
      #   # @param metadata [Object, nil] The metadata for this verification. This object will be returned with every
      #   #   response or webhook sent that refers to this verification.
      #   #
      #   # @param options [Object, nil] Verification options
      #   #
      #   # @param signals [Object, nil] The signals used for anti-fraud.
      #   #
      #   def initialize(target:, metadata: nil, options: nil, signals: nil) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      class Target < PreludeSDK::BaseModel
        # @!attribute type
        #   The type of the target. Currently this can only be "phone_number".
        #
        #   @return [Symbol, PreludeSDK::Models::VerificationCreateParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::VerificationCreateParams::Target::Type }

        # @!attribute value
        #   An E.164 formatted phone number to verify.
        #
        #   @return [String]
        required :value, String

        # @!parse
        #   # The target. Currently this can only be an E.164 formatted phone number.
        #   #
        #   # @param type [String] The type of the target. Currently this can only be "phone_number".
        #   #
        #   # @param value [String] An E.164 formatted phone number to verify.
        #   #
        #   def initialize(type:, value:) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # The type of the target. Currently this can only be "phone_number".
        class Type < PreludeSDK::Enum
          PHONE_NUMBER = :phone_number
        end
      end

      class Metadata < PreludeSDK::BaseModel
        # @!attribute correlation_id
        #   A user-defined identifier to correlate this verification with.
        #
        #   @return [String]
        optional :correlation_id, String

        # @!parse
        #   # The metadata for this verification. This object will be returned with every
        #   #   response or webhook sent that refers to this verification.
        #   #
        #   # @param correlation_id [String, nil] A user-defined identifier to correlate this verification with.
        #   #
        #   def initialize(correlation_id: nil) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void
      end

      class Options < PreludeSDK::BaseModel
        # @!attribute app_realm
        #   The Android SMS Retriever API hash code that identifies your app. This allows you to automatically retrieve and fill the OTP code on Android devices.
        #
        #   @return [String]
        optional :app_realm, String

        # @!attribute custom_code
        #   The custom code to use for OTP verification. This feature is only available for compatibility purposes and subject to Prelude’s approval. Contact us to discuss your use case.
        #
        #   @return [String]
        optional :custom_code, String

        # @!attribute locale
        #   A BCP-47 formatted locale string with the language the text message will be sent to. If there's no locale set, the language will be determined by the country code of the phone number. If the language specified doesn't exist, it defaults to US English.
        #
        #   @return [String]
        optional :locale, String

        # @!attribute sender_id
        #   The Sender ID to use for this message. The Sender ID needs to be enabled by Prelude.
        #
        #   @return [String]
        optional :sender_id, String

        # @!attribute template_id
        #   The identifier of a verification settings template. It is used to be able to switch behavior for specific use cases. Contact us if you need to use this functionality.
        #
        #   @return [String]
        optional :template_id, String

        # @!parse
        #   # Verification options
        #   #
        #   # @param app_realm [String, nil] The Android SMS Retriever API hash code that identifies your app. This allows
        #   #   you to automatically retrieve and fill the OTP code on Android devices.
        #   #
        #   # @param custom_code [String, nil] The custom code to use for OTP verification. This feature is only available for
        #   #   compatibility purposes and subject to Prelude’s approval. Contact us to discuss
        #   #   your use case.
        #   #
        #   # @param locale [String, nil] A BCP-47 formatted locale string with the language the text message will be sent
        #   #   to. If there's no locale set, the language will be determined by the country
        #   #   code of the phone number. If the language specified doesn't exist, it defaults
        #   #   to US English.
        #   #
        #   # @param sender_id [String, nil] The Sender ID to use for this message. The Sender ID needs to be enabled by
        #   #   Prelude.
        #   #
        #   # @param template_id [String, nil] The identifier of a verification settings template. It is used to be able to
        #   #   switch behavior for specific use cases. Contact us if you need to use this
        #   #   functionality.
        #   #
        #   def initialize(app_realm: nil, custom_code: nil, locale: nil, sender_id: nil, template_id: nil) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void
      end

      class Signals < PreludeSDK::BaseModel
        # @!attribute app_version
        #   The version of your application.
        #
        #   @return [String]
        optional :app_version, String

        # @!attribute device_id
        #   The unique identifier for the user's device. For Android, this corresponds to the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #
        #   @return [String]
        optional :device_id, String

        # @!attribute device_model
        #   The model of the user's device.
        #
        #   @return [String]
        optional :device_model, String

        # @!attribute device_platform
        #   The type of the user's device.
        #
        #   @return [Symbol, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform]
        optional :device_platform,
                 enum: -> { PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform }

        # @!attribute ip
        #   The IP address of the user's device.
        #
        #   @return [String]
        optional :ip, String

        # @!attribute is_trusted_user
        #   This signal should provide a higher level of trust, indicating that the user is genuine. For more details, refer to [Signals](/guides/prevent-fraud#signals).
        #
        #   @return [Boolean]
        optional :is_trusted_user, PreludeSDK::BooleanModel

        # @!attribute os_version
        #   The version of the user's device operating system.
        #
        #   @return [String]
        optional :os_version, String

        # @!parse
        #   # The signals used for anti-fraud.
        #   #
        #   # @param app_version [String, nil] The version of your application.
        #   #
        #   # @param device_id [String, nil] The unique identifier for the user's device. For Android, this corresponds to
        #   #   the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #   #
        #   # @param device_model [String, nil] The model of the user's device.
        #   #
        #   # @param device_platform [String, nil] The type of the user's device.
        #   #
        #   # @param ip [String, nil] The IP address of the user's device.
        #   #
        #   # @param is_trusted_user [Boolean, nil] This signal should provide a higher level of trust, indicating that the user is
        #   #   genuine. For more details, refer to [Signals](/guides/prevent-fraud#signals).
        #   #
        #   # @param os_version [String, nil] The version of the user's device operating system.
        #   #
        #   def initialize(
        #     app_version: nil,
        #     device_id: nil,
        #     device_model: nil,
        #     device_platform: nil,
        #     ip: nil,
        #     is_trusted_user: nil,
        #     os_version: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # The type of the user's device.
        class DevicePlatform < PreludeSDK::Enum
          ANDROID = :android
          IOS = :ios
          IPADOS = :ipados
          TVOS = :tvos
          WEB = :web
        end
      end
    end
  end
end
