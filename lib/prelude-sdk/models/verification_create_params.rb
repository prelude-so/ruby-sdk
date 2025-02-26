# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationCreateParams < PreludeSDK::BaseModel
      # @!parse
      #   extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      # @!attribute target
      #   The target. Currently this can only be an E.164 formatted phone number.
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Target]
      required :target, -> { PreludeSDK::Models::VerificationCreateParams::Target }

      # @!attribute [r] metadata
      #   The metadata for this verification. This object will be returned with every
      #     response or webhook sent that refers to this verification.
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
      #   # @param target [PreludeSDK::Models::VerificationCreateParams::Target]
      #   # @param metadata [PreludeSDK::Models::VerificationCreateParams::Metadata]
      #   # @param options [PreludeSDK::Models::VerificationCreateParams::Options]
      #   # @param signals [PreludeSDK::Models::VerificationCreateParams::Signals]
      #   # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(target:, metadata: nil, options: nil, signals: nil, request_options: {}, **) = super

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
        #   # @param type [Symbol, PreludeSDK::Models::VerificationCreateParams::Target::Type]
        #   # @param value [String]
        #   #
        #   def initialize(type:, value:, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # @abstract
        #
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

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

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
        #   # @param correlation_id [String]
        #   #
        #   def initialize(correlation_id: nil, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void
      end

      class Options < PreludeSDK::BaseModel
        # @!attribute [r] app_realm
        #   The Android SMS Retriever API hash code that identifies your app. This allows
        #     you to automatically retrieve and fill the OTP code on Android devices.
        #
        #   @return [String, nil]
        optional :app_realm, String

        # @!parse
        #   # @return [String]
        #   attr_writer :app_realm

        # @!attribute [r] locale
        #   A BCP-47 formatted locale string with the language the text message will be sent
        #     to. If there's no locale set, the language will be determined by the country
        #     code of the phone number. If the language specified doesn't exist, it defaults
        #     to US English.
        #
        #   @return [String, nil]
        optional :locale, String

        # @!parse
        #   # @return [String]
        #   attr_writer :locale

        # @!attribute [r] sender_id
        #   The Sender ID to use for this message. The Sender ID needs to be enabled by
        #     Prelude.
        #
        #   @return [String, nil]
        optional :sender_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :sender_id

        # @!attribute [r] template_id
        #   The identifier of a verification settings template. It is used to be able to
        #     switch behavior for specific use cases. Contact us if you need to use this
        #     functionality.
        #
        #   @return [String, nil]
        optional :template_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :template_id

        # @!parse
        #   # Verification options
        #   #
        #   # @param app_realm [String]
        #   # @param locale [String]
        #   # @param sender_id [String]
        #   # @param template_id [String]
        #   #
        #   def initialize(app_realm: nil, locale: nil, sender_id: nil, template_id: nil, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void
      end

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
        #   The unique identifier for the user's device. For Android, this corresponds to
        #     the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
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
        #   This signal should provide a higher level of trust, indicating that the user is
        #     genuine. For more details, refer to [Signals](/guides/prevent-fraud#signals).
        #
        #   @return [String, nil]
        optional :is_trusted_user, String

        # @!parse
        #   # @return [String]
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
        #   # @param app_version [String]
        #   # @param device_id [String]
        #   # @param device_model [String]
        #   # @param device_platform [Symbol, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform]
        #   # @param ip [String]
        #   # @param is_trusted_user [String]
        #   # @param os_version [String]
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

        # @abstract
        #
        # The type of the user's device.
        #
        # @example
        # ```ruby
        # case device_platform
        # in :android
        #   # ...
        # in :ios
        #   # ...
        # in :web
        #   # ...
        # end
        # ```
        class DevicePlatform < PreludeSDK::Enum
          ANDROID = :android
          IOS = :ios
          WEB = :web

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
