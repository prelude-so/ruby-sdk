# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      sig { returns(PreludeSDK::Models::VerificationCreateParams::Target) }
      attr_accessor :target

      sig { returns(T.nilable(String)) }
      attr_reader :dispatch_id

      sig { params(dispatch_id: String).void }
      attr_writer :dispatch_id

      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Metadata)) }
      attr_reader :metadata

      sig { params(metadata: PreludeSDK::Models::VerificationCreateParams::Metadata).void }
      attr_writer :metadata

      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Options)) }
      attr_reader :options

      sig { params(options: PreludeSDK::Models::VerificationCreateParams::Options).void }
      attr_writer :options

      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Signals)) }
      attr_reader :signals

      sig { params(signals: PreludeSDK::Models::VerificationCreateParams::Signals).void }
      attr_writer :signals

      sig do
        params(
          target: PreludeSDK::Models::VerificationCreateParams::Target,
          dispatch_id: String,
          metadata: PreludeSDK::Models::VerificationCreateParams::Metadata,
          options: PreludeSDK::Models::VerificationCreateParams::Options,
          signals: PreludeSDK::Models::VerificationCreateParams::Signals,
          request_options: T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        target:,
        dispatch_id: nil,
        metadata: nil,
        options: nil,
        signals: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

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
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        sig { params(correlation_id: String).void }
        def initialize(correlation_id: nil)
        end

        sig { override.returns({correlation_id: String}) }
        def to_hash
        end
      end

      class Options < PreludeSDK::BaseModel
        sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateParams::Options::AppRealm)) }
        attr_reader :app_realm

        sig { params(app_realm: PreludeSDK::Models::VerificationCreateParams::Options::AppRealm).void }
        attr_writer :app_realm

        sig { returns(T.nilable(Integer)) }
        attr_reader :code_size

        sig { params(code_size: Integer).void }
        attr_writer :code_size

        sig { returns(T.nilable(String)) }
        attr_reader :custom_code

        sig { params(custom_code: String).void }
        attr_writer :custom_code

        sig { returns(T.nilable(String)) }
        attr_reader :locale

        sig { params(locale: String).void }
        attr_writer :locale

        sig { returns(T.nilable(String)) }
        attr_reader :sender_id

        sig { params(sender_id: String).void }
        attr_writer :sender_id

        sig { returns(T.nilable(String)) }
        attr_reader :template_id

        sig { params(template_id: String).void }
        attr_writer :template_id

        sig do
          params(
            app_realm: PreludeSDK::Models::VerificationCreateParams::Options::AppRealm,
            code_size: Integer,
            custom_code: String,
            locale: String,
            sender_id: String,
            template_id: String
          ).void
        end
        def initialize(
          app_realm: nil,
          code_size: nil,
          custom_code: nil,
          locale: nil,
          sender_id: nil,
          template_id: nil
        )
        end

        sig do
          override.returns(
            {
              app_realm: PreludeSDK::Models::VerificationCreateParams::Options::AppRealm,
              code_size: Integer,
              custom_code: String,
              locale: String,
              sender_id: String,
              template_id: String
            }
          )
        end
        def to_hash
        end

        class AppRealm < PreludeSDK::BaseModel
          sig { returns(Symbol) }
          attr_accessor :platform

          sig { returns(String) }
          attr_accessor :value

          sig { params(platform: Symbol, value: String).void }
          def initialize(platform:, value:)
          end

          sig { override.returns({platform: Symbol, value: String}) }
          def to_hash
          end

          class Platform < PreludeSDK::Enum
            abstract!

            ANDROID = :android

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class Signals < PreludeSDK::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :app_version

        sig { params(app_version: String).void }
        attr_writer :app_version

        sig { returns(T.nilable(String)) }
        attr_reader :device_id

        sig { params(device_id: String).void }
        attr_writer :device_id

        sig { returns(T.nilable(String)) }
        attr_reader :device_model

        sig { params(device_model: String).void }
        attr_writer :device_model

        sig { returns(T.nilable(Symbol)) }
        attr_reader :device_platform

        sig { params(device_platform: Symbol).void }
        attr_writer :device_platform

        sig { returns(T.nilable(String)) }
        attr_reader :ip

        sig { params(ip: String).void }
        attr_writer :ip

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_trusted_user

        sig { params(is_trusted_user: T::Boolean).void }
        attr_writer :is_trusted_user

        sig { returns(T.nilable(String)) }
        attr_reader :os_version

        sig { params(os_version: String).void }
        attr_writer :os_version

        sig do
          params(
            app_version: String,
            device_id: String,
            device_model: String,
            device_platform: Symbol,
            ip: String,
            is_trusted_user: T::Boolean,
            os_version: String
          ).void
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
          override.returns(
            {
              app_version: String,
              device_id: String,
              device_model: String,
              device_platform: Symbol,
              ip: String,
              is_trusted_user: T::Boolean,
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
          IPADOS = :ipados
          TVOS = :tvos
          WEB = :web

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
