# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      sig { returns(PreludeSDK::Models::VerificationCreateParams::Target) }
      def target
      end

      sig do
        params(_: PreludeSDK::Models::VerificationCreateParams::Target)
          .returns(PreludeSDK::Models::VerificationCreateParams::Target)
      end
      def target=(_)
      end

      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Metadata)) }
      def metadata
      end

      sig do
        params(_: PreludeSDK::Models::VerificationCreateParams::Metadata)
          .returns(PreludeSDK::Models::VerificationCreateParams::Metadata)
      end
      def metadata=(_)
      end

      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Options)) }
      def options
      end

      sig do
        params(_: PreludeSDK::Models::VerificationCreateParams::Options)
          .returns(PreludeSDK::Models::VerificationCreateParams::Options)
      end
      def options=(_)
      end

      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Signals)) }
      def signals
      end

      sig do
        params(_: PreludeSDK::Models::VerificationCreateParams::Signals)
          .returns(PreludeSDK::Models::VerificationCreateParams::Signals)
      end
      def signals=(_)
      end

      sig do
        params(
          target: PreludeSDK::Models::VerificationCreateParams::Target,
          metadata: PreludeSDK::Models::VerificationCreateParams::Metadata,
          options: PreludeSDK::Models::VerificationCreateParams::Options,
          signals: PreludeSDK::Models::VerificationCreateParams::Signals,
          request_options: T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(target:, metadata: nil, options: nil, signals: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              target: PreludeSDK::Models::VerificationCreateParams::Target,
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
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(String) }
        def value
        end

        sig { params(_: String).returns(String) }
        def value=(_)
        end

        sig { params(type: Symbol, value: String).void }
        def initialize(type:, value:)
        end

        sig { override.returns({type: Symbol, value: String}) }
        def to_hash
        end

        class Type < PreludeSDK::Enum
          abstract!

          PHONE_NUMBER = :phone_number

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Metadata < PreludeSDK::BaseModel
        sig { returns(T.nilable(String)) }
        def correlation_id
        end

        sig { params(_: String).returns(String) }
        def correlation_id=(_)
        end

        sig { params(correlation_id: String).void }
        def initialize(correlation_id: nil)
        end

        sig { override.returns({correlation_id: String}) }
        def to_hash
        end
      end

      class Options < PreludeSDK::BaseModel
        sig { returns(T.nilable(String)) }
        def app_realm
        end

        sig { params(_: String).returns(String) }
        def app_realm=(_)
        end

        sig { returns(T.nilable(String)) }
        def locale
        end

        sig { params(_: String).returns(String) }
        def locale=(_)
        end

        sig { returns(T.nilable(String)) }
        def sender_id
        end

        sig { params(_: String).returns(String) }
        def sender_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def template_id
        end

        sig { params(_: String).returns(String) }
        def template_id=(_)
        end

        sig { params(app_realm: String, locale: String, sender_id: String, template_id: String).void }
        def initialize(app_realm: nil, locale: nil, sender_id: nil, template_id: nil)
        end

        sig { override.returns({app_realm: String, locale: String, sender_id: String, template_id: String}) }
        def to_hash
        end
      end

      class Signals < PreludeSDK::BaseModel
        sig { returns(T.nilable(String)) }
        def app_version
        end

        sig { params(_: String).returns(String) }
        def app_version=(_)
        end

        sig { returns(T.nilable(String)) }
        def device_id
        end

        sig { params(_: String).returns(String) }
        def device_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def device_model
        end

        sig { params(_: String).returns(String) }
        def device_model=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def device_platform
        end

        sig { params(_: Symbol).returns(Symbol) }
        def device_platform=(_)
        end

        sig { returns(T.nilable(String)) }
        def ip
        end

        sig { params(_: String).returns(String) }
        def ip=(_)
        end

        sig { returns(T.nilable(String)) }
        def is_trusted_user
        end

        sig { params(_: String).returns(String) }
        def is_trusted_user=(_)
        end

        sig { returns(T.nilable(String)) }
        def os_version
        end

        sig { params(_: String).returns(String) }
        def os_version=(_)
        end

        sig do
          params(
            app_version: String,
            device_id: String,
            device_model: String,
            device_platform: Symbol,
            ip: String,
            is_trusted_user: String,
            os_version: String
          )
            .void
        end
        def initialize(
          app_version: nil,
          device_id: nil,
          device_model: nil,
          device_platform: nil,
          ip: nil,
          is_trusted_user: nil,
          os_version: nil
        )
        end

        sig do
          override
            .returns(
              {
                app_version: String,
                device_id: String,
                device_model: String,
                device_platform: Symbol,
                ip: String,
                is_trusted_user: String,
                os_version: String
              }
            )
        end
        def to_hash
        end

        class DevicePlatform < PreludeSDK::Enum
          abstract!

          ANDROID = :android
          IOS = :ios
          WEB = :web

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
