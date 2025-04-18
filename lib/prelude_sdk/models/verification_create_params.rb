# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Verification#create
    class VerificationCreateParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute target
      #   The verification target. Either a phone number or an email address. To use the
      #   email verification feature contact us to discuss your use case.
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Target]
      required :target, -> { PreludeSDK::Models::VerificationCreateParams::Target }

      # @!attribute dispatch_id
      #   The identifier of the dispatch that came from the front-end SDK.
      #
      #   @return [String, nil]
      optional :dispatch_id, String

      # @!attribute metadata
      #   The metadata for this verification. This object will be returned with every
      #   response or webhook sent that refers to this verification.
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Metadata, nil]
      optional :metadata, -> { PreludeSDK::Models::VerificationCreateParams::Metadata }

      # @!attribute method_
      #   The method used for verifying this phone number. The 'voice' option provides an
      #   accessible alternative for visually impaired users by delivering the
      #   verification code through a phone call rather than a text message. It also
      #   allows verification of landline numbers that cannot receive SMS messages.
      #   **Coming soon.**
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationCreateParams::Method, nil]
      optional :method_, enum: -> { PreludeSDK::Models::VerificationCreateParams::Method }, api_name: :method

      # @!attribute options
      #   Verification options
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Options, nil]
      optional :options, -> { PreludeSDK::Models::VerificationCreateParams::Options }

      # @!attribute signals
      #   The signals used for anti-fraud. For more details, refer to
      #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
      #
      #   @return [PreludeSDK::Models::VerificationCreateParams::Signals, nil]
      optional :signals, -> { PreludeSDK::Models::VerificationCreateParams::Signals }

      # @!method initialize(target:, dispatch_id: nil, metadata: nil, method_: nil, options: nil, signals: nil, request_options: {})
      #   @param target [PreludeSDK::Models::VerificationCreateParams::Target]
      #   @param dispatch_id [String]
      #   @param metadata [PreludeSDK::Models::VerificationCreateParams::Metadata]
      #   @param method_ [Symbol, PreludeSDK::Models::VerificationCreateParams::Method]
      #   @param options [PreludeSDK::Models::VerificationCreateParams::Options]
      #   @param signals [PreludeSDK::Models::VerificationCreateParams::Signals]
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Target < PreludeSDK::Internal::Type::BaseModel
        # @!attribute type
        #   The type of the target. Either "phone_number" or "email_address".
        #
        #   @return [Symbol, PreludeSDK::Models::VerificationCreateParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::VerificationCreateParams::Target::Type }

        # @!attribute value
        #   An E.164 formatted phone number or an email address.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(type:, value:)
        #   The verification target. Either a phone number or an email address. To use the
        #   email verification feature contact us to discuss your use case.
        #
        #   @param type [Symbol, PreludeSDK::Models::VerificationCreateParams::Target::Type]
        #   @param value [String]

        # The type of the target. Either "phone_number" or "email_address".
        #
        # @see PreludeSDK::Models::VerificationCreateParams::Target#type
        module Type
          extend PreludeSDK::Internal::Type::Enum

          PHONE_NUMBER = :phone_number
          EMAIL_ADDRESS = :email_address

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Metadata < PreludeSDK::Internal::Type::BaseModel
        # @!attribute correlation_id
        #   A user-defined identifier to correlate this verification with.
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!method initialize(correlation_id: nil)
        #   The metadata for this verification. This object will be returned with every
        #   response or webhook sent that refers to this verification.
        #
        #   @param correlation_id [String]
      end

      # The method used for verifying this phone number. The 'voice' option provides an
      # accessible alternative for visually impaired users by delivering the
      # verification code through a phone call rather than a text message. It also
      # allows verification of landline numbers that cannot receive SMS messages.
      # **Coming soon.**
      module Method
        extend PreludeSDK::Internal::Type::Enum

        AUTO = :auto
        VOICE = :voice

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Options < PreludeSDK::Internal::Type::BaseModel
        # @!attribute app_realm
        #   This allows you to automatically retrieve and fill the OTP code on mobile apps.
        #   Currently only Android devices are supported.
        #
        #   @return [PreludeSDK::Models::VerificationCreateParams::Options::AppRealm, nil]
        optional :app_realm, -> { PreludeSDK::Models::VerificationCreateParams::Options::AppRealm }

        # @!attribute callback_url
        #   The URL where webhooks will be sent when verification events occur, including
        #   verification creation, attempt creation, and delivery status changes. For more
        #   details, refer to [Webhook](/verify/v2/documentation/webhook).
        #
        #   @return [String, nil]
        optional :callback_url, String

        # @!attribute code_size
        #   The size of the code generated. It should be between 4 and 8. Defaults to the
        #   code size specified from the Dashboard.
        #
        #   @return [Integer, nil]
        optional :code_size, Integer

        # @!attribute custom_code
        #   The custom code to use for OTP verification. This feature is only available for
        #   compatibility purposes and subject to Prelude’s approval. Contact us to discuss
        #   your use case. For more details, refer to
        #   [Multi Routing](/introduction/concepts/multi-routing).
        #
        #   @return [String, nil]
        optional :custom_code, String

        # @!attribute locale
        #   A BCP-47 formatted locale string with the language the text message will be sent
        #   to. If there's no locale set, the language will be determined by the country
        #   code of the phone number. If the language specified doesn't exist, it defaults
        #   to US English.
        #
        #   @return [String, nil]
        optional :locale, String

        # @!attribute sender_id
        #   The Sender ID to use for this message. The Sender ID needs to be enabled by
        #   Prelude.
        #
        #   @return [String, nil]
        optional :sender_id, String

        # @!attribute template_id
        #   The identifier of a verification template. It applies use case-specific
        #   settings, such as the message content or certain verification parameters.
        #
        #   @return [String, nil]
        optional :template_id, String

        # @!attribute variables
        #   The variables to be replaced in the template.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :variables, PreludeSDK::Internal::Type::HashOf[String]

        # @!method initialize(app_realm: nil, callback_url: nil, code_size: nil, custom_code: nil, locale: nil, sender_id: nil, template_id: nil, variables: nil)
        #   Verification options
        #
        #   @param app_realm [PreludeSDK::Models::VerificationCreateParams::Options::AppRealm]
        #   @param callback_url [String]
        #   @param code_size [Integer]
        #   @param custom_code [String]
        #   @param locale [String]
        #   @param sender_id [String]
        #   @param template_id [String]
        #   @param variables [Hash{Symbol=>String}]

        # @see PreludeSDK::Models::VerificationCreateParams::Options#app_realm
        class AppRealm < PreludeSDK::Internal::Type::BaseModel
          # @!attribute platform
          #   The platform the SMS will be sent to. We are currently only supporting
          #   "android".
          #
          #   @return [Symbol, PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform]
          required :platform, enum: -> { PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform }

          # @!attribute value
          #   The Android SMS Retriever API hash code that identifies your app.
          #
          #   @return [String]
          required :value, String

          # @!method initialize(platform:, value:)
          #   This allows you to automatically retrieve and fill the OTP code on mobile apps.
          #   Currently only Android devices are supported.
          #
          #   @param platform [Symbol, PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform]
          #   @param value [String]

          # The platform the SMS will be sent to. We are currently only supporting
          # "android".
          #
          # @see PreludeSDK::Models::VerificationCreateParams::Options::AppRealm#platform
          module Platform
            extend PreludeSDK::Internal::Type::Enum

            ANDROID = :android

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      class Signals < PreludeSDK::Internal::Type::BaseModel
        # @!attribute app_version
        #   The version of your application.
        #
        #   @return [String, nil]
        optional :app_version, String

        # @!attribute device_id
        #   The unique identifier for the user's device. For Android, this corresponds to
        #   the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #
        #   @return [String, nil]
        optional :device_id, String

        # @!attribute device_model
        #   The model of the user's device.
        #
        #   @return [String, nil]
        optional :device_model, String

        # @!attribute device_platform
        #   The type of the user's device.
        #
        #   @return [Symbol, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform, nil]
        optional :device_platform,
                 enum: -> { PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform }

        # @!attribute ip
        #   The IP address of the user's device.
        #
        #   @return [String, nil]
        optional :ip, String

        # @!attribute is_trusted_user
        #   This signal should provide a higher level of trust, indicating that the user is
        #   genuine. For more details, refer to
        #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
        #
        #   @return [Boolean, nil]
        optional :is_trusted_user, PreludeSDK::Internal::Type::Boolean

        # @!attribute os_version
        #   The version of the user's device operating system.
        #
        #   @return [String, nil]
        optional :os_version, String

        # @!attribute user_agent
        #   The user agent of the user's device. If the individual fields (os_version,
        #   device_platform, device_model) are provided, we will prioritize those values
        #   instead of parsing them from the user agent string.
        #
        #   @return [String, nil]
        optional :user_agent, String

        # @!method initialize(app_version: nil, device_id: nil, device_model: nil, device_platform: nil, ip: nil, is_trusted_user: nil, os_version: nil, user_agent: nil)
        #   The signals used for anti-fraud. For more details, refer to
        #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
        #
        #   @param app_version [String]
        #   @param device_id [String]
        #   @param device_model [String]
        #   @param device_platform [Symbol, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform]
        #   @param ip [String]
        #   @param is_trusted_user [Boolean]
        #   @param os_version [String]
        #   @param user_agent [String]

        # The type of the user's device.
        #
        # @see PreludeSDK::Models::VerificationCreateParams::Signals#device_platform
        module DevicePlatform
          extend PreludeSDK::Internal::Type::Enum

          ANDROID = :android
          IOS = :ios
          IPADOS = :ipados
          TVOS = :tvos
          WEB = :web

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
