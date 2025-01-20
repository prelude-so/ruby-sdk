# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationCreateParams < PreludeSDK::BaseModel
      # @!attribute target
      #   The target. Currently this can only be an E.164 formatted phone number.
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Target]
      required :target, -> { PreludeSDK::Models::VerificationCreateParams::Target }

      # @!attribute [r] dispatch_id
      #   The identifier of the dispatch that came from the front-end SDK.
      #
      #   @return [String, nil]
      optional :dispatch_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :dispatch_id

      # @!attribute [r] metadata
      #   The metadata for this verification. This object will be returned with every response or webhook sent that refers to this verification.
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Metadata, nil]
      optional :metadata, -> { PreludeSDK::Models::VerificationCreateParams::Metadata }

      # @!parse
      #   # @return [PreludeSDK::Models::VerificationCreateParams::Metadata]
      #   attr_writer :metadata

      # @!attribute [r] options
      #   Verification options
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Options, nil]
      optional :options, -> { PreludeSDK::Models::VerificationCreateParams::Options }

      # @!parse
      #   # @return [PreludeSDK::Models::VerificationCreateParams::Options]
      #   attr_writer :options

      # @!attribute [r] signals
      #   The signals used for anti-fraud.
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Signals, nil]
      optional :signals, -> { PreludeSDK::Models::VerificationCreateParams::Signals }

      # @!parse
      #   # @return [PreludeSDK::Models::VerificationCreateParams::Signals]
      #   attr_writer :signals

      # @!parse
      #   # @param target [PreludeSDK::Models::VerificationCreateParams::Target] The target. Currently this can only be an E.164 formatted phone number.
      #   #
      #   # @param dispatch_id [String] The identifier of the dispatch that came from the front-end SDK.
      #   #
      #   # @param metadata [PreludeSDK::Models::VerificationCreateParams::Metadata] The metadata for this verification. This object will be returned with every
      #   #   response or webhook sent that refers to this verification.
      #   #
      #   # @param options [PreludeSDK::Models::VerificationCreateParams::Options] Verification options
      #   #
      #   # @param signals [PreludeSDK::Models::VerificationCreateParams::Signals] The signals used for anti-fraud.
      #   #
      #   def initialize(target:, dispatch_id: nil, metadata: nil, options: nil, signals: nil, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      # @example
      # ```ruby
      # target => {
      #   type: enum: PreludeSDK::Models::VerificationCreateParams::Target::Type,
      #   value: String
      # }
      # ```
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
        #   def initialize(type:, value:, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # The type of the target. Currently this can only be "phone_number".
        #
        # @example
        # ```ruby
        # case type
        # in :phone_number
        #   # ...
        # end
        # ```
        class Type < PreludeSDK::Enum
          PHONE_NUMBER = :phone_number

          finalize!
        end
      end

      # @example
      # ```ruby
      # metadata => {
      #   correlation_id: String
      # }
      # ```
      class Metadata < PreludeSDK::BaseModel
        # @!attribute [r] correlation_id
        #   A user-defined identifier to correlate this verification with.
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :correlation_id

        # @!parse
        #   # The metadata for this verification. This object will be returned with every
        #   #   response or webhook sent that refers to this verification.
        #   #
        #   # @param correlation_id [String] A user-defined identifier to correlate this verification with.
        #   #
        #   def initialize(correlation_id: nil, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void
      end

      # @example
      # ```ruby
      # options => {
      #   app_realm: PreludeSDK::Models::VerificationCreateParams::Options::AppRealm,
      #   code_size: Integer,
      #   custom_code: String,
      #   locale: String,
      #   sender_id: String
      # }
      # ```
      class Options < PreludeSDK::BaseModel
        # @!attribute [r] app_realm
        #   This allows you to automatically retrieve and fill the OTP code on mobile apps. Currently only Android devices are supported.
        #
        #   @return [PreludeSDK::Models::VerificationCreateParams::Options::AppRealm, nil]
        optional :app_realm, -> { PreludeSDK::Models::VerificationCreateParams::Options::AppRealm }

        # @!parse
        #   # @return [PreludeSDK::Models::VerificationCreateParams::Options::AppRealm]
        #   attr_writer :app_realm

        # @!attribute [r] code_size
        #   The size of the code generated. It should be between 4 and 8. Defaults to the code size specified from the Dashboard.
        #
        #   @return [Integer, nil]
        optional :code_size, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :code_size

        # @!attribute [r] custom_code
        #   The custom code to use for OTP verification. This feature is only available for compatibility purposes and subject to Prelude’s approval. Contact us to discuss your use case.
        #
        #   @return [String, nil]
        optional :custom_code, String

        # @!parse
        #   # @return [String]
        #   attr_writer :custom_code

        # @!attribute [r] locale
        #   A BCP-47 formatted locale string with the language the text message will be sent to. If there's no locale set, the language will be determined by the country code of the phone number. If the language specified doesn't exist, it defaults to US English.
        #
        #   @return [String, nil]
        optional :locale, String

        # @!parse
        #   # @return [String]
        #   attr_writer :locale

        # @!attribute [r] sender_id
        #   The Sender ID to use for this message. The Sender ID needs to be enabled by Prelude.
        #
        #   @return [String, nil]
        optional :sender_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :sender_id

        # @!attribute [r] template_id
        #   The identifier of a verification settings template. It is used to be able to switch behavior for specific use cases. Contact us if you need to use this functionality.
        #
        #   @return [String, nil]
        optional :template_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :template_id

        # @!parse
        #   # Verification options
        #   #
        #   # @param app_realm [PreludeSDK::Models::VerificationCreateParams::Options::AppRealm] This allows you to automatically retrieve and fill the OTP code on mobile apps.
        #   #   Currently only Android devices are supported.
        #   #
        #   # @param code_size [Integer] The size of the code generated. It should be between 4 and 8. Defaults to the
        #   #   code size specified from the Dashboard.
        #   #
        #   # @param custom_code [String] The custom code to use for OTP verification. This feature is only available for
        #   #   compatibility purposes and subject to Prelude’s approval. Contact us to discuss
        #   #   your use case.
        #   #
        #   # @param locale [String] A BCP-47 formatted locale string with the language the text message will be sent
        #   #   to. If there's no locale set, the language will be determined by the country
        #   #   code of the phone number. If the language specified doesn't exist, it defaults
        #   #   to US English.
        #   #
        #   # @param sender_id [String] The Sender ID to use for this message. The Sender ID needs to be enabled by
        #   #   Prelude.
        #   #
        #   # @param template_id [String] The identifier of a verification settings template. It is used to be able to
        #   #   switch behavior for specific use cases. Contact us if you need to use this
        #   #   functionality.
        #   #
        #   def initialize(app_realm: nil, code_size: nil, custom_code: nil, locale: nil, sender_id: nil, template_id: nil, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # @example
        # ```ruby
        # app_realm => {
        #   platform: enum: PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform,
        #   value: String
        # }
        # ```
        class AppRealm < PreludeSDK::BaseModel
          # @!attribute platform
          #   The platform the SMS will be sent to. We are currently only supporting "android".
          #
          #   @return [Symbol, PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform]
          required :platform,
                   enum: -> {
                     PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform
                   }

          # @!attribute value
          #   The Android SMS Retriever API hash code that identifies your app.
          #
          #   @return [String]
          required :value, String

          # @!parse
          #   # This allows you to automatically retrieve and fill the OTP code on mobile apps.
          #   #   Currently only Android devices are supported.
          #   #
          #   # @param platform [String] The platform the SMS will be sent to. We are currently only supporting
          #   #   "android".
          #   #
          #   # @param value [String] The Android SMS Retriever API hash code that identifies your app.
          #   #
          #   def initialize(platform:, value:, **) = super

          # def initialize: (Hash | PreludeSDK::BaseModel) -> void

          # The platform the SMS will be sent to. We are currently only supporting "android".
          #
          # @example
          # ```ruby
          # case platform
          # in :android
          #   # ...
          # end
          # ```
          class Platform < PreludeSDK::Enum
            ANDROID = :android

            finalize!
          end
        end
      end

      # @example
      # ```ruby
      # signals => {
      #   app_version: String,
      #   device_id: String,
      #   device_model: String,
      #   device_platform: enum: PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform,
      #   ip: String,
      #   **_
      # }
      # ```
      class Signals < PreludeSDK::BaseModel
        # @!attribute [r] app_version
        #   The version of your application.
        #
        #   @return [String, nil]
        optional :app_version, String

        # @!parse
        #   # @return [String]
        #   attr_writer :app_version

        # @!attribute [r] device_id
        #   The unique identifier for the user's device. For Android, this corresponds to the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #
        #   @return [String, nil]
        optional :device_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :device_id

        # @!attribute [r] device_model
        #   The model of the user's device.
        #
        #   @return [String, nil]
        optional :device_model, String

        # @!parse
        #   # @return [String]
        #   attr_writer :device_model

        # @!attribute [r] device_platform
        #   The type of the user's device.
        #
        #   @return [Symbol, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform, nil]
        optional :device_platform,
                 enum: -> { PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform }

        # @!parse
        #   # @return [Symbol, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform]
        #   attr_writer :device_platform

        # @!attribute [r] ip
        #   The IP address of the user's device.
        #
        #   @return [String, nil]
        optional :ip, String

        # @!parse
        #   # @return [String]
        #   attr_writer :ip

        # @!attribute [r] is_trusted_user
        #   This signal should provide a higher level of trust, indicating that the user is genuine. For more details, refer to [Signals](/guides/prevent-fraud#signals).
        #
        #   @return [Boolean, nil]
        optional :is_trusted_user, PreludeSDK::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :is_trusted_user

        # @!attribute [r] os_version
        #   The version of the user's device operating system.
        #
        #   @return [String, nil]
        optional :os_version, String

        # @!parse
        #   # @return [String]
        #   attr_writer :os_version

        # @!parse
        #   # The signals used for anti-fraud.
        #   #
        #   # @param app_version [String] The version of your application.
        #   #
        #   # @param device_id [String] The unique identifier for the user's device. For Android, this corresponds to
        #   #   the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #   #
        #   # @param device_model [String] The model of the user's device.
        #   #
        #   # @param device_platform [String] The type of the user's device.
        #   #
        #   # @param ip [String] The IP address of the user's device.
        #   #
        #   # @param is_trusted_user [Boolean] This signal should provide a higher level of trust, indicating that the user is
        #   #   genuine. For more details, refer to [Signals](/guides/prevent-fraud#signals).
        #   #
        #   # @param os_version [String] The version of the user's device operating system.
        #   #
        #   def initialize(
        #     app_version: nil,
        #     device_id: nil,
        #     device_model: nil,
        #     device_platform: nil,
        #     ip: nil,
        #     is_trusted_user: nil,
        #     os_version: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # The type of the user's device.
        #
        # @example
        # ```ruby
        # case device_platform
        # in :android
        #   # ...
        # in :ios
        #   # ...
        # in :ipados
        #   # ...
        # in :tvos
        #   # ...
        # in :web
        #   # ...
        # end
        # ```
        class DevicePlatform < PreludeSDK::Enum
          ANDROID = :android
          IOS = :ios
          IPADOS = :ipados
          TVOS = :tvos
          WEB = :web

          finalize!
        end
      end
    end
  end
end
