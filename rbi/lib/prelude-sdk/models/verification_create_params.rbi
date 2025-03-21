# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      # The verification target. Either a phone number or an email address. To use the
      #   email verification feature contact us to discuss your use case.
      sig { returns(PreludeSDK::Models::VerificationCreateParams::Target) }
      def target
      end

      sig do
        params(_: T.any(PreludeSDK::Models::VerificationCreateParams::Target, PreludeSDK::Util::AnyHash))
          .returns(T.any(PreludeSDK::Models::VerificationCreateParams::Target, PreludeSDK::Util::AnyHash))
      end
      def target=(_)
      end

      # The identifier of the dispatch that came from the front-end SDK.
      sig { returns(T.nilable(String)) }
      def dispatch_id
      end

      sig { params(_: String).returns(String) }
      def dispatch_id=(_)
      end

      # The metadata for this verification. This object will be returned with every
      #   response or webhook sent that refers to this verification.
      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Metadata)) }
      def metadata
      end

      sig do
        params(_: T.any(PreludeSDK::Models::VerificationCreateParams::Metadata, PreludeSDK::Util::AnyHash))
          .returns(T.any(PreludeSDK::Models::VerificationCreateParams::Metadata, PreludeSDK::Util::AnyHash))
      end
      def metadata=(_)
      end

      # Verification options
      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Options)) }
      def options
      end

      sig do
        params(_: T.any(PreludeSDK::Models::VerificationCreateParams::Options, PreludeSDK::Util::AnyHash))
          .returns(T.any(PreludeSDK::Models::VerificationCreateParams::Options, PreludeSDK::Util::AnyHash))
      end
      def options=(_)
      end

      # The signals used for anti-fraud. For more details, refer to
      #   [Signals](/guides/prevent-fraud#signals).
      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Signals)) }
      def signals
      end

      sig do
        params(_: T.any(PreludeSDK::Models::VerificationCreateParams::Signals, PreludeSDK::Util::AnyHash))
          .returns(T.any(PreludeSDK::Models::VerificationCreateParams::Signals, PreludeSDK::Util::AnyHash))
      end
      def signals=(_)
      end

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
        def type
        end

        sig do
          params(_: PreludeSDK::Models::VerificationCreateParams::Target::Type::OrSymbol)
            .returns(PreludeSDK::Models::VerificationCreateParams::Target::Type::OrSymbol)
        end
        def type=(_)
        end

        # An E.164 formatted phone number or an email address.
        sig { returns(String) }
        def value
        end

        sig { params(_: String).returns(String) }
        def value=(_)
        end

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

          class << self
            sig { override.returns(T::Array[PreludeSDK::Models::VerificationCreateParams::Target::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      class Metadata < PreludeSDK::BaseModel
        # A user-defined identifier to correlate this verification with.
        sig { returns(T.nilable(String)) }
        def correlation_id
        end

        sig { params(_: String).returns(String) }
        def correlation_id=(_)
        end

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
        def app_realm
        end

        sig do
          params(
            _: T.any(PreludeSDK::Models::VerificationCreateParams::Options::AppRealm, PreludeSDK::Util::AnyHash)
          )
            .returns(T.any(PreludeSDK::Models::VerificationCreateParams::Options::AppRealm, PreludeSDK::Util::AnyHash))
        end
        def app_realm=(_)
        end

        # The URL where webhooks will be sent when verification events occur, including
        #   verification creation, attempt creation, and delivery status changes. For more
        #   details, refer to [Webhook](/api-reference/v2/verify/webhook).
        sig { returns(T.nilable(String)) }
        def callback_url
        end

        sig { params(_: String).returns(String) }
        def callback_url=(_)
        end

        # The size of the code generated. It should be between 4 and 8. Defaults to the
        #   code size specified from the Dashboard.
        sig { returns(T.nilable(Integer)) }
        def code_size
        end

        sig { params(_: Integer).returns(Integer) }
        def code_size=(_)
        end

        # The custom code to use for OTP verification. This feature is only available for
        #   compatibility purposes and subject to Prelude’s approval. Contact us to discuss
        #   your use case. For more details, refer to
        #   [Multi Routing](/concepts/multi-routing).
        sig { returns(T.nilable(String)) }
        def custom_code
        end

        sig { params(_: String).returns(String) }
        def custom_code=(_)
        end

        # A BCP-47 formatted locale string with the language the text message will be sent
        #   to. If there's no locale set, the language will be determined by the country
        #   code of the phone number. If the language specified doesn't exist, it defaults
        #   to US English.
        sig { returns(T.nilable(String)) }
        def locale
        end

        sig { params(_: String).returns(String) }
        def locale=(_)
        end

        # The Sender ID to use for this message. The Sender ID needs to be enabled by
        #   Prelude.
        sig { returns(T.nilable(String)) }
        def sender_id
        end

        sig { params(_: String).returns(String) }
        def sender_id=(_)
        end

        # The identifier of a verification template. It applies use case-specific
        #   settings, such as the message content or certain verification parameters.
        sig { returns(T.nilable(String)) }
        def template_id
        end

        sig { params(_: String).returns(String) }
        def template_id=(_)
        end

        # The variables to be replaced in the template.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def variables
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def variables=(_)
        end

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
          def platform
          end

          sig do
            params(_: PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform::OrSymbol)
              .returns(PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform::OrSymbol)
          end
          def platform=(_)
          end

          # The Android SMS Retriever API hash code that identifies your app.
          sig { returns(String) }
          def value
          end

          sig { params(_: String).returns(String) }
          def value=(_)
          end

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

            class << self
              sig do
                override
                  .returns(T::Array[PreludeSDK::Models::VerificationCreateParams::Options::AppRealm::Platform::TaggedSymbol])
              end
              def values
              end
            end
          end
        end
      end

      class Signals < PreludeSDK::BaseModel
        # The version of your application.
        sig { returns(T.nilable(String)) }
        def app_version
        end

        sig { params(_: String).returns(String) }
        def app_version=(_)
        end

        # The unique identifier for the user's device. For Android, this corresponds to
        #   the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        sig { returns(T.nilable(String)) }
        def device_id
        end

        sig { params(_: String).returns(String) }
        def device_id=(_)
        end

        # The model of the user's device.
        sig { returns(T.nilable(String)) }
        def device_model
        end

        sig { params(_: String).returns(String) }
        def device_model=(_)
        end

        # The type of the user's device.
        sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::OrSymbol)) }
        def device_platform
        end

        sig do
          params(_: PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::OrSymbol)
            .returns(PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::OrSymbol)
        end
        def device_platform=(_)
        end

        # The IP address of the user's device.
        sig { returns(T.nilable(String)) }
        def ip
        end

        sig { params(_: String).returns(String) }
        def ip=(_)
        end

        # This signal should provide a higher level of trust, indicating that the user is
        #   genuine. For more details, refer to [Signals](/guides/prevent-fraud#signals).
        sig { returns(T.nilable(T::Boolean)) }
        def is_trusted_user
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_trusted_user=(_)
        end

        # The version of the user's device operating system.
        sig { returns(T.nilable(String)) }
        def os_version
        end

        sig { params(_: String).returns(String) }
        def os_version=(_)
        end

        # The user agent of the user's device. If the individual fields (os_version,
        #   device_platform, device_model) are provided, we will prioritize those values
        #   instead of parsing them from the user agent string.
        sig { returns(T.nilable(String)) }
        def user_agent
        end

        sig { params(_: String).returns(String) }
        def user_agent=(_)
        end

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

          class << self
            sig do
              override
                .returns(T::Array[PreludeSDK::Models::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol])
            end
            def values
            end
          end
        end
      end
    end
  end
end
