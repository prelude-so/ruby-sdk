# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      # The verification target. Either a phone number or an email address. To use the
      #   email verification feature contact us to discuss your use case.
      sig { returns(PreludeSDK::Models::VerificationCreateParams::Target) }
      attr_reader :target

      sig { params(target: T.any(PreludeSDK::Models::VerificationCreateParams::Target, PreludeSDK::Util::AnyHash)).void }
      attr_writer :target

      # The identifier of the dispatch that came from the front-end SDK.
      sig { returns(T.nilable(String)) }
      attr_reader :dispatch_id

      sig { params(dispatch_id: String).void }
      attr_writer :dispatch_id

      # The metadata for this verification. This object will be returned with every
      #   response or webhook sent that refers to this verification.
      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Metadata)) }
      attr_reader :metadata

      sig do
        params(metadata: T.any(PreludeSDK::Models::VerificationCreateParams::Metadata, PreludeSDK::Util::AnyHash))
          .void
      end
      attr_writer :metadata

      # Verification options
      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Options)) }
      attr_reader :options

      sig do
        params(options: T.any(PreludeSDK::Models::VerificationCreateParams::Options, PreludeSDK::Util::AnyHash))
          .void
      end
      attr_writer :options

      # The signals used for anti-fraud. For more details, refer to
      #   [Signals](/guides/prevent-fraud#signals).
      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Signals)) }
      attr_reader :signals

      sig do
        params(signals: T.any(PreludeSDK::Models::VerificationCreateParams::Signals, PreludeSDK::Util::AnyHash))
          .void
      end
      attr_writer :signals

      sig do
        params(
          target: T.any(PreludeSDK::Models::VerificationCreateParams::Target, PreludeSDK::Util::AnyHash),
          dispatch_id: String,
          metadata: T.any(PreludeSDK::Models::VerificationCreateParams::Metadata, PreludeSDK::Util::AnyHash),
          options: T.any(PreludeSDK::Models::VerificationCreateParams::Options, PreludeSDK::Util::AnyHash),
          signals: T.any(PreludeSDK::Models::VerificationCreateParams::Signals, PreludeSDK::Util::AnyHash),
          request_options: T.any(PreludeSDK::RequestOptions, PreludeSDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(target:, dispatch_id: nil, metadata: nil, options: nil, signals: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              target: PreludeSDK::Models::VerificationCreateParams::Target,
              dispatch_id: String,
              metadata: PreludeSDK::Models::VerificationCreateParams::Metadata,
              options: PreludeSDK::Models::VerificationCreateParams::Options,
              signals: PreludeSDK::Models::VerificationCreateParams::Signals,
              request_options: PreludeSDK::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Target < PreludeSDK::BaseModel
        # The type of the target. Either "phone_number" or "email_address".
        sig { returns(PreludeSDK::Models::VerificationCreateParams::Target::Type::OrSymbol) }
        attr_accessor :type

        # An E.164 formatted phone number or an email address.
        sig { returns(String) }
        attr_accessor :value

        # The verification target. Either a phone number or an email address. To use the
        #   email verification feature contact us to discuss your use case.
        sig do
          params(type: PreludeSDK::Models::VerificationCreateParams::Target::Type::OrSymbol, value: String)
            .returns(T.attached_class)
        end
        def self.new(type:, value:)
        end

        sig do
          override
            .returns({type: PreludeSDK::Models::VerificationCreateParams::Target::Type::OrSymbol, value: String})
        end
        def to_hash
        end

        # The type of the target. Either "phone_number" or "email_address".
        module Type
          extend PreludeSDK::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::VerificationCreateParams::Target::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, PreludeSDK::Models::VerificationCreateParams::Target::Type::TaggedSymbol) }

          PHONE_NUMBER =
            T.let(:phone_number, PreludeSDK::Models::VerificationCreateParams::Target::Type::TaggedSymbol)
          EMAIL_ADDRESS =
            T.let(:email_address, PreludeSDK::Models::VerificationCreateParams::Target::Type::TaggedSymbol)

          sig { override.returns(T::Array[PreludeSDK::Models::VerificationCreateParams::Target::Type::TaggedSymbol]) }
          def self.values
          end
        end
      end

      class Metadata < PreludeSDK::BaseModel
        # A user-defined identifier to correlate this verification with.
        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        # The metadata for this verification. This object will be returned with every
        #   response or webhook sent that refers to this verification.
        sig { params(correlation_id: String).returns(T.attached_class) }
        def self.new(correlation_id: nil)
        end

        sig { override.returns({correlation_id: String}) }
        def to_hash
        end
      end

      class Options < PreludeSDK::BaseModel
        # This allows you to automatically retrieve and fill the OTP code on mobile apps.
        #   Currently only Android devices are supported.
        sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Options::AppRealm)) }
        attr_reader :app_realm

        sig do
          params(
            app_realm: T.any(PreludeSDK::Models::VerificationCreateParams::Options::AppRealm, PreludeSDK::Util::AnyHash)
          )
            .void
        end
        attr_writer :app_realm

        # The URL where webhooks will be sent when verification events occur, including
        #   verification creation, attempt creation, and delivery status changes. For more
        #   details, refer to [Webhook](/api-reference/v2/verify/webhook).
        sig { returns(T.nilable(String)) }
        attr_reader :callback_url

        sig { params(callback_url: String).void }
        attr_writer :callback_url

        # The size of the code generated. It should be between 4 and 8. Defaults to the
        #   code size specified from the Dashboard.
        sig { returns(T.nilable(Integer)) }
        attr_reader :code_size

        sig { params(code_size: Integer).void }
        attr_writer :code_size

        # The custom code to use for OTP verification. This feature is only available for
        #   compatibility purposes and subject to Prelude’s approval. Contact us to discuss
        #   your use case. For more details, refer to
        #   [Multi Routing](/concepts/multi-routing).
        sig { returns(T.nilable(String)) }
        attr_reader :custom_code

        sig { params(custom_code: String).void }
        attr_writer :custom_code

        # A BCP-47 formatted locale string with the language the text message will be sent
        #   to. If there's no locale set, the language will be determined by the country
        #   code of the phone number. If the language specified doesn't exist, it defaults
        #   to US English.
        sig { returns(T.nilable(String)) }
        attr_reader :locale

        sig { params(locale: String).void }
        attr_writer :locale

        # The Sender ID to use for this message. The Sender ID needs to be enabled by
        #   Prelude.
        sig { returns(T.nilable(String)) }
        attr_reader :sender_id

        sig { params(sender_id: String).void }
        attr_writer :sender_id

        # The identifier of a verification template. It applies use case-specific
        #   settings, such as the message content or certain verification parameters.
        sig { returns(T.nilable(String)) }
        attr_reader :template_id

        sig { params(template_id: String).void }
        attr_writer :template_id

        # The variables to be replaced in the template.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :variables

        sig { params(variables: T::Hash[Symbol, String]).void }
        attr_writer :variables

        # Verification options
        sig do
          params(
            app_realm: T.any(PreludeSDK::Models::VerificationCreateParams::Options::AppRealm, PreludeSDK::Util::AnyHash),
            callback_url: String,
            code_size: Integer,
            custom_code: String,
            locale: String,
            sender_id: String,
            template_id: String,
            variables: T::Hash[Symbol, String]
          )
            .returns(T.attached_class)
        end
        def self.new(
          app_realm: nil,
          callback_url: nil,
          code_size: nil,
          custom_code: nil,
          locale: nil,
          sender_id: nil,
          template_id: nil,
          variables: nil
        )
        end

        sig do
          override
            .returns(
              {
                app_realm: PreludeSDK::Models::VerificationCreateParams::Options::AppRealm,
                callback_url: String,
                code_size: Integer,
                custom_code: String,
                locale: String,
                sender_id: String,
                template_id: String,
                variables: T::Hash[Symbol, String]
              }
            )
        end
        def to_hash
        end

        class AppRealm < PreludeSDK::BaseModel
          # The platform the SMS will be sent to. We are currently only supporting
          #   "android".
          sig { returns(PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform::OrSymbol) }
          attr_accessor :platform

          # The Android SMS Retriever API hash code that identifies your app.
          sig { returns(String) }
          attr_accessor :value

          # This allows you to automatically retrieve and fill the OTP code on mobile apps.
          #   Currently only Android devices are supported.
          sig do
            params(
              platform: PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform::OrSymbol,
              value: String
            )
              .returns(T.attached_class)
          end
          def self.new(platform:, value:)
          end

          sig do
            override
              .returns(
                {platform: PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform::OrSymbol, value: String}
              )
          end
          def to_hash
          end

          # The platform the SMS will be sent to. We are currently only supporting
          #   "android".
          module Platform
            extend PreludeSDK::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform) }
            OrSymbol =
              T.type_alias { T.any(Symbol, PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform::TaggedSymbol) }

            ANDROID =
              T.let(:android, PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform::TaggedSymbol)

            sig do
              override
                .returns(T::Array[PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform::TaggedSymbol])
            end
            def self.values
            end
          end
        end
      end

      class Signals < PreludeSDK::BaseModel
        # The version of your application.
        sig { returns(T.nilable(String)) }
        attr_reader :app_version

        sig { params(app_version: String).void }
        attr_writer :app_version

        # The unique identifier for the user's device. For Android, this corresponds to
        #   the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        sig { returns(T.nilable(String)) }
        attr_reader :device_id

        sig { params(device_id: String).void }
        attr_writer :device_id

        # The model of the user's device.
        sig { returns(T.nilable(String)) }
        attr_reader :device_model

        sig { params(device_model: String).void }
        attr_writer :device_model

        # The type of the user's device.
        sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::OrSymbol)) }
        attr_reader :device_platform

        sig do
          params(device_platform: PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::OrSymbol)
            .void
        end
        attr_writer :device_platform

        # The IP address of the user's device.
        sig { returns(T.nilable(String)) }
        attr_reader :ip

        sig { params(ip: String).void }
        attr_writer :ip

        # This signal should provide a higher level of trust, indicating that the user is
        #   genuine. For more details, refer to [Signals](/guides/prevent-fraud#signals).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_trusted_user

        sig { params(is_trusted_user: T::Boolean).void }
        attr_writer :is_trusted_user

        # The version of the user's device operating system.
        sig { returns(T.nilable(String)) }
        attr_reader :os_version

        sig { params(os_version: String).void }
        attr_writer :os_version

        # The user agent of the user's device. If the individual fields (os_version,
        #   device_platform, device_model) are provided, we will prioritize those values
        #   instead of parsing them from the user agent string.
        sig { returns(T.nilable(String)) }
        attr_reader :user_agent

        sig { params(user_agent: String).void }
        attr_writer :user_agent

        # The signals used for anti-fraud. For more details, refer to
        #   [Signals](/guides/prevent-fraud#signals).
        sig do
          params(
            app_version: String,
            device_id: String,
            device_model: String,
            device_platform: PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::OrSymbol,
            ip: String,
            is_trusted_user: T::Boolean,
            os_version: String,
            user_agent: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          app_version: nil,
          device_id: nil,
          device_model: nil,
          device_platform: nil,
          ip: nil,
          is_trusted_user: nil,
          os_version: nil,
          user_agent: nil
        )
        end

        sig do
          override
            .returns(
              {
                app_version: String,
                device_id: String,
                device_model: String,
                device_platform: PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::OrSymbol,
                ip: String,
                is_trusted_user: T::Boolean,
                os_version: String,
                user_agent: String
              }
            )
        end
        def to_hash
        end

        # The type of the user's device.
        module DevicePlatform
          extend PreludeSDK::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform) }
          OrSymbol =
            T.type_alias { T.any(Symbol, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol) }

          ANDROID =
            T.let(:android, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol)
          IOS = T.let(:ios, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol)
          IPADOS =
            T.let(:ipados, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol)
          TVOS = T.let(:tvos, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol)
          WEB = T.let(:web, PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol)

          sig do
            override
              .returns(T::Array[PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol])
          end
          def self.values
          end
        end
      end
    end
  end
end
