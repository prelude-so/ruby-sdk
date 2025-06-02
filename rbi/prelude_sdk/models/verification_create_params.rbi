# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::VerificationCreateParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The verification target. Either a phone number or an email address. To use the
      # email verification feature contact us to discuss your use case.
      sig { returns(PreludeSDK::VerificationCreateParams::Target) }
      attr_reader :target

      sig do
        params(
          target: PreludeSDK::VerificationCreateParams::Target::OrHash
        ).void
      end
      attr_writer :target

      # The identifier of the dispatch that came from the front-end SDK.
      sig { returns(T.nilable(String)) }
      attr_reader :dispatch_id

      sig { params(dispatch_id: String).void }
      attr_writer :dispatch_id

      # The metadata for this verification. This object will be returned with every
      # response or webhook sent that refers to this verification.
      sig { returns(T.nilable(PreludeSDK::VerificationCreateParams::Metadata)) }
      attr_reader :metadata

      sig do
        params(
          metadata: PreludeSDK::VerificationCreateParams::Metadata::OrHash
        ).void
      end
      attr_writer :metadata

      # Verification options
      sig { returns(T.nilable(PreludeSDK::VerificationCreateParams::Options)) }
      attr_reader :options

      sig do
        params(
          options: PreludeSDK::VerificationCreateParams::Options::OrHash
        ).void
      end
      attr_writer :options

      # The signals used for anti-fraud. For more details, refer to
      # [Signals](/verify/v2/documentation/prevent-fraud#signals).
      sig { returns(T.nilable(PreludeSDK::VerificationCreateParams::Signals)) }
      attr_reader :signals

      sig do
        params(
          signals: PreludeSDK::VerificationCreateParams::Signals::OrHash
        ).void
      end
      attr_writer :signals

      sig do
        params(
          target: PreludeSDK::VerificationCreateParams::Target::OrHash,
          dispatch_id: String,
          metadata: PreludeSDK::VerificationCreateParams::Metadata::OrHash,
          options: PreludeSDK::VerificationCreateParams::Options::OrHash,
          signals: PreludeSDK::VerificationCreateParams::Signals::OrHash,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The verification target. Either a phone number or an email address. To use the
        # email verification feature contact us to discuss your use case.
        target:,
        # The identifier of the dispatch that came from the front-end SDK.
        dispatch_id: nil,
        # The metadata for this verification. This object will be returned with every
        # response or webhook sent that refers to this verification.
        metadata: nil,
        # Verification options
        options: nil,
        # The signals used for anti-fraud. For more details, refer to
        # [Signals](/verify/v2/documentation/prevent-fraud#signals).
        signals: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            target: PreludeSDK::VerificationCreateParams::Target,
            dispatch_id: String,
            metadata: PreludeSDK::VerificationCreateParams::Metadata,
            options: PreludeSDK::VerificationCreateParams::Options,
            signals: PreludeSDK::VerificationCreateParams::Signals,
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Target < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::VerificationCreateParams::Target,
              PreludeSDK::Internal::AnyHash
            )
          end

        # The type of the target. Either "phone_number" or "email_address".
        sig do
          returns(PreludeSDK::VerificationCreateParams::Target::Type::OrSymbol)
        end
        attr_accessor :type

        # An E.164 formatted phone number or an email address.
        sig { returns(String) }
        attr_accessor :value

        # The verification target. Either a phone number or an email address. To use the
        # email verification feature contact us to discuss your use case.
        sig do
          params(
            type: PreludeSDK::VerificationCreateParams::Target::Type::OrSymbol,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of the target. Either "phone_number" or "email_address".
          type:,
          # An E.164 formatted phone number or an email address.
          value:
        )
        end

        sig do
          override.returns(
            {
              type:
                PreludeSDK::VerificationCreateParams::Target::Type::OrSymbol,
              value: String
            }
          )
        end
        def to_hash
        end

        # The type of the target. Either "phone_number" or "email_address".
        module Type
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, PreludeSDK::VerificationCreateParams::Target::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PHONE_NUMBER =
            T.let(
              :phone_number,
              PreludeSDK::VerificationCreateParams::Target::Type::TaggedSymbol
            )
          EMAIL_ADDRESS =
            T.let(
              :email_address,
              PreludeSDK::VerificationCreateParams::Target::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::VerificationCreateParams::Target::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Metadata < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::VerificationCreateParams::Metadata,
              PreludeSDK::Internal::AnyHash
            )
          end

        # A user-defined identifier to correlate this verification with.
        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        # The metadata for this verification. This object will be returned with every
        # response or webhook sent that refers to this verification.
        sig { params(correlation_id: String).returns(T.attached_class) }
        def self.new(
          # A user-defined identifier to correlate this verification with.
          correlation_id: nil
        )
        end

        sig { override.returns({ correlation_id: String }) }
        def to_hash
        end
      end

      class Options < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::VerificationCreateParams::Options,
              PreludeSDK::Internal::AnyHash
            )
          end

        # This allows you to automatically retrieve and fill the OTP code on mobile apps.
        # Currently only Android devices are supported.
        sig do
          returns(
            T.nilable(PreludeSDK::VerificationCreateParams::Options::AppRealm)
          )
        end
        attr_reader :app_realm

        sig do
          params(
            app_realm:
              PreludeSDK::VerificationCreateParams::Options::AppRealm::OrHash
          ).void
        end
        attr_writer :app_realm

        # The URL where webhooks will be sent when verification events occur, including
        # verification creation, attempt creation, and delivery status changes. For more
        # details, refer to [Webhook](/verify/v2/documentation/webhook).
        sig { returns(T.nilable(String)) }
        attr_reader :callback_url

        sig { params(callback_url: String).void }
        attr_writer :callback_url

        # The size of the code generated. It should be between 4 and 8. Defaults to the
        # code size specified from the Dashboard.
        sig { returns(T.nilable(Integer)) }
        attr_reader :code_size

        sig { params(code_size: Integer).void }
        attr_writer :code_size

        # The custom code to use for OTP verification. To use the custom code feature,
        # contact us to enable it for your account. For more details, refer to
        # [Custom Code](/verify/v2/documentation/custom-codes).
        sig { returns(T.nilable(String)) }
        attr_reader :custom_code

        sig { params(custom_code: String).void }
        attr_writer :custom_code

        # A BCP-47 formatted locale string with the language the text message will be sent
        # to. If there's no locale set, the language will be determined by the country
        # code of the phone number. If the language specified doesn't exist, it defaults
        # to US English.
        sig { returns(T.nilable(String)) }
        attr_reader :locale

        sig { params(locale: String).void }
        attr_writer :locale

        # The method used for verifying this phone number. The 'voice' option provides an
        # accessible alternative for visually impaired users by delivering the
        # verification code through a phone call rather than a text message. It also
        # allows verification of landline numbers that cannot receive SMS messages.
        sig do
          returns(
            T.nilable(
              PreludeSDK::VerificationCreateParams::Options::Method::OrSymbol
            )
          )
        end
        attr_reader :method_

        sig do
          params(
            method_:
              PreludeSDK::VerificationCreateParams::Options::Method::OrSymbol
          ).void
        end
        attr_writer :method_

        # The preferred channel to be used in priority for verification.
        sig do
          returns(
            T.nilable(
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::OrSymbol
            )
          )
        end
        attr_reader :preferred_channel

        sig do
          params(
            preferred_channel:
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::OrSymbol
          ).void
        end
        attr_writer :preferred_channel

        # The Sender ID to use for this message. The Sender ID needs to be enabled by
        # Prelude.
        sig { returns(T.nilable(String)) }
        attr_reader :sender_id

        sig { params(sender_id: String).void }
        attr_writer :sender_id

        # The identifier of a verification template. It applies use case-specific
        # settings, such as the message content or certain verification parameters.
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
            app_realm:
              PreludeSDK::VerificationCreateParams::Options::AppRealm::OrHash,
            callback_url: String,
            code_size: Integer,
            custom_code: String,
            locale: String,
            method_:
              PreludeSDK::VerificationCreateParams::Options::Method::OrSymbol,
            preferred_channel:
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::OrSymbol,
            sender_id: String,
            template_id: String,
            variables: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          # This allows you to automatically retrieve and fill the OTP code on mobile apps.
          # Currently only Android devices are supported.
          app_realm: nil,
          # The URL where webhooks will be sent when verification events occur, including
          # verification creation, attempt creation, and delivery status changes. For more
          # details, refer to [Webhook](/verify/v2/documentation/webhook).
          callback_url: nil,
          # The size of the code generated. It should be between 4 and 8. Defaults to the
          # code size specified from the Dashboard.
          code_size: nil,
          # The custom code to use for OTP verification. To use the custom code feature,
          # contact us to enable it for your account. For more details, refer to
          # [Custom Code](/verify/v2/documentation/custom-codes).
          custom_code: nil,
          # A BCP-47 formatted locale string with the language the text message will be sent
          # to. If there's no locale set, the language will be determined by the country
          # code of the phone number. If the language specified doesn't exist, it defaults
          # to US English.
          locale: nil,
          # The method used for verifying this phone number. The 'voice' option provides an
          # accessible alternative for visually impaired users by delivering the
          # verification code through a phone call rather than a text message. It also
          # allows verification of landline numbers that cannot receive SMS messages.
          method_: nil,
          # The preferred channel to be used in priority for verification.
          preferred_channel: nil,
          # The Sender ID to use for this message. The Sender ID needs to be enabled by
          # Prelude.
          sender_id: nil,
          # The identifier of a verification template. It applies use case-specific
          # settings, such as the message content or certain verification parameters.
          template_id: nil,
          # The variables to be replaced in the template.
          variables: nil
        )
        end

        sig do
          override.returns(
            {
              app_realm:
                PreludeSDK::VerificationCreateParams::Options::AppRealm,
              callback_url: String,
              code_size: Integer,
              custom_code: String,
              locale: String,
              method_:
                PreludeSDK::VerificationCreateParams::Options::Method::OrSymbol,
              preferred_channel:
                PreludeSDK::VerificationCreateParams::Options::PreferredChannel::OrSymbol,
              sender_id: String,
              template_id: String,
              variables: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end

        class AppRealm < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::VerificationCreateParams::Options::AppRealm,
                PreludeSDK::Internal::AnyHash
              )
            end

          # The platform the SMS will be sent to. We are currently only supporting
          # "android".
          sig do
            returns(
              PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform::OrSymbol
            )
          end
          attr_accessor :platform

          # The Android SMS Retriever API hash code that identifies your app.
          sig { returns(String) }
          attr_accessor :value

          # This allows you to automatically retrieve and fill the OTP code on mobile apps.
          # Currently only Android devices are supported.
          sig do
            params(
              platform:
                PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform::OrSymbol,
              value: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The platform the SMS will be sent to. We are currently only supporting
            # "android".
            platform:,
            # The Android SMS Retriever API hash code that identifies your app.
            value:
          )
          end

          sig do
            override.returns(
              {
                platform:
                  PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform::OrSymbol,
                value: String
              }
            )
          end
          def to_hash
          end

          # The platform the SMS will be sent to. We are currently only supporting
          # "android".
          module Platform
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANDROID =
              T.let(
                :android,
                PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The method used for verifying this phone number. The 'voice' option provides an
        # accessible alternative for visually impaired users by delivering the
        # verification code through a phone call rather than a text message. It also
        # allows verification of landline numbers that cannot receive SMS messages.
        module Method
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::VerificationCreateParams::Options::Method
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTO =
            T.let(
              :auto,
              PreludeSDK::VerificationCreateParams::Options::Method::TaggedSymbol
            )
          VOICE =
            T.let(
              :voice,
              PreludeSDK::VerificationCreateParams::Options::Method::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::VerificationCreateParams::Options::Method::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The preferred channel to be used in priority for verification.
        module PreferredChannel
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::VerificationCreateParams::Options::PreferredChannel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SMS =
            T.let(
              :sms,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )
          RCS =
            T.let(
              :rcs,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )
          WHATSAPP =
            T.let(
              :whatsapp,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )
          VIBER =
            T.let(
              :viber,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )
          ZALO =
            T.let(
              :zalo,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )
          TELEGRAM =
            T.let(
              :telegram,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )
          SILENT =
            T.let(
              :silent,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )
          VOICE =
            T.let(
              :voice,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Signals < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::VerificationCreateParams::Signals,
              PreludeSDK::Internal::AnyHash
            )
          end

        # The version of your application.
        sig { returns(T.nilable(String)) }
        attr_reader :app_version

        sig { params(app_version: String).void }
        attr_writer :app_version

        # The unique identifier for the user's device. For Android, this corresponds to
        # the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
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
        sig do
          returns(
            T.nilable(
              PreludeSDK::VerificationCreateParams::Signals::DevicePlatform::OrSymbol
            )
          )
        end
        attr_reader :device_platform

        sig do
          params(
            device_platform:
              PreludeSDK::VerificationCreateParams::Signals::DevicePlatform::OrSymbol
          ).void
        end
        attr_writer :device_platform

        # The IP address of the user's device.
        sig { returns(T.nilable(String)) }
        attr_reader :ip

        sig { params(ip: String).void }
        attr_writer :ip

        # This signal should provide a higher level of trust, indicating that the user is
        # genuine. Contact us to discuss your use case. For more details, refer to
        # [Signals](/verify/v2/documentation/prevent-fraud#signals).
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
        # device_platform, device_model) are provided, we will prioritize those values
        # instead of parsing them from the user agent string.
        sig { returns(T.nilable(String)) }
        attr_reader :user_agent

        sig { params(user_agent: String).void }
        attr_writer :user_agent

        # The signals used for anti-fraud. For more details, refer to
        # [Signals](/verify/v2/documentation/prevent-fraud#signals).
        sig do
          params(
            app_version: String,
            device_id: String,
            device_model: String,
            device_platform:
              PreludeSDK::VerificationCreateParams::Signals::DevicePlatform::OrSymbol,
            ip: String,
            is_trusted_user: T::Boolean,
            os_version: String,
            user_agent: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The version of your application.
          app_version: nil,
          # The unique identifier for the user's device. For Android, this corresponds to
          # the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
          device_id: nil,
          # The model of the user's device.
          device_model: nil,
          # The type of the user's device.
          device_platform: nil,
          # The IP address of the user's device.
          ip: nil,
          # This signal should provide a higher level of trust, indicating that the user is
          # genuine. Contact us to discuss your use case. For more details, refer to
          # [Signals](/verify/v2/documentation/prevent-fraud#signals).
          is_trusted_user: nil,
          # The version of the user's device operating system.
          os_version: nil,
          # The user agent of the user's device. If the individual fields (os_version,
          # device_platform, device_model) are provided, we will prioritize those values
          # instead of parsing them from the user agent string.
          user_agent: nil
        )
        end

        sig do
          override.returns(
            {
              app_version: String,
              device_id: String,
              device_model: String,
              device_platform:
                PreludeSDK::VerificationCreateParams::Signals::DevicePlatform::OrSymbol,
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
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::VerificationCreateParams::Signals::DevicePlatform
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ANDROID =
            T.let(
              :android,
              PreludeSDK::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol
            )
          IOS =
            T.let(
              :ios,
              PreludeSDK::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol
            )
          IPADOS =
            T.let(
              :ipados,
              PreludeSDK::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol
            )
          TVOS =
            T.let(
              :tvos,
              PreludeSDK::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol
            )
          WEB =
            T.let(
              :web,
              PreludeSDK::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::VerificationCreateParams::Signals::DevicePlatform::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
