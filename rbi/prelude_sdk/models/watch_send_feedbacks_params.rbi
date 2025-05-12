# typed: strong

module PreludeSDK
  module Models
    class WatchSendFeedbacksParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::WatchSendFeedbacksParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      # A list of feedbacks to send.
      sig { returns(T::Array[PreludeSDK::WatchSendFeedbacksParams::Feedback]) }
      attr_accessor :feedbacks

      sig do
        params(
          feedbacks:
            T::Array[PreludeSDK::WatchSendFeedbacksParams::Feedback::OrHash],
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of feedbacks to send.
        feedbacks:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            feedbacks: T::Array[PreludeSDK::WatchSendFeedbacksParams::Feedback],
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Feedback < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::WatchSendFeedbacksParams::Feedback,
              PreludeSDK::Internal::AnyHash
            )
          end

        # The feedback target. Only supports phone numbers for now.
        sig { returns(PreludeSDK::WatchSendFeedbacksParams::Feedback::Target) }
        attr_reader :target

        sig do
          params(
            target:
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Target::OrHash
          ).void
        end
        attr_writer :target

        # The type of feedback.
        sig do
          returns(
            PreludeSDK::WatchSendFeedbacksParams::Feedback::Type::OrSymbol
          )
        end
        attr_accessor :type

        # The identifier of the dispatch that came from the front-end SDK.
        sig { returns(T.nilable(String)) }
        attr_reader :dispatch_id

        sig { params(dispatch_id: String).void }
        attr_writer :dispatch_id

        # The metadata for this feedback.
        sig do
          returns(
            T.nilable(PreludeSDK::WatchSendFeedbacksParams::Feedback::Metadata)
          )
        end
        attr_reader :metadata

        sig do
          params(
            metadata:
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Metadata::OrHash
          ).void
        end
        attr_writer :metadata

        # The signals used for anti-fraud. For more details, refer to
        # [Signals](/verify/v2/documentation/prevent-fraud#signals).
        sig do
          returns(
            T.nilable(PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals)
          )
        end
        attr_reader :signals

        sig do
          params(
            signals:
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::OrHash
          ).void
        end
        attr_writer :signals

        sig do
          params(
            target:
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Target::OrHash,
            type:
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Type::OrSymbol,
            dispatch_id: String,
            metadata:
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Metadata::OrHash,
            signals:
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The feedback target. Only supports phone numbers for now.
          target:,
          # The type of feedback.
          type:,
          # The identifier of the dispatch that came from the front-end SDK.
          dispatch_id: nil,
          # The metadata for this feedback.
          metadata: nil,
          # The signals used for anti-fraud. For more details, refer to
          # [Signals](/verify/v2/documentation/prevent-fraud#signals).
          signals: nil
        )
        end

        sig do
          override.returns(
            {
              target: PreludeSDK::WatchSendFeedbacksParams::Feedback::Target,
              type:
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Type::OrSymbol,
              dispatch_id: String,
              metadata:
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Metadata,
              signals: PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals
            }
          )
        end
        def to_hash
        end

        class Target < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Target,
                PreludeSDK::Internal::AnyHash
              )
            end

          # The type of the target. Either "phone_number" or "email_address".
          sig do
            returns(
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Target::Type::OrSymbol
            )
          end
          attr_accessor :type

          # An E.164 formatted phone number or an email address.
          sig { returns(String) }
          attr_accessor :value

          # The feedback target. Only supports phone numbers for now.
          sig do
            params(
              type:
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Target::Type::OrSymbol,
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
                  PreludeSDK::WatchSendFeedbacksParams::Feedback::Target::Type::OrSymbol,
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
                T.all(
                  Symbol,
                  PreludeSDK::WatchSendFeedbacksParams::Feedback::Target::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PHONE_NUMBER =
              T.let(
                :phone_number,
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Target::Type::TaggedSymbol
              )
            EMAIL_ADDRESS =
              T.let(
                :email_address,
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Target::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::WatchSendFeedbacksParams::Feedback::Target::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The type of feedback.
        module Type
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VERIFICATION_STARTED =
            T.let(
              :"verification.started",
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Type::TaggedSymbol
            )
          VERIFICATION_COMPLETED =
            T.let(
              :"verification.completed",
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Metadata < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Metadata,
                PreludeSDK::Internal::AnyHash
              )
            end

          # A user-defined identifier to correlate this feedback with.
          sig { returns(T.nilable(String)) }
          attr_reader :correlation_id

          sig { params(correlation_id: String).void }
          attr_writer :correlation_id

          # The metadata for this feedback.
          sig { params(correlation_id: String).returns(T.attached_class) }
          def self.new(
            # A user-defined identifier to correlate this feedback with.
            correlation_id: nil
          )
          end

          sig { override.returns({ correlation_id: String }) }
          def to_hash
          end
        end

        class Signals < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals,
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
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform::OrSymbol
              )
            )
          end
          attr_reader :device_platform

          sig do
            params(
              device_platform:
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform::OrSymbol
            ).void
          end
          attr_writer :device_platform

          # The IP address of the user's device.
          sig { returns(T.nilable(String)) }
          attr_reader :ip

          sig { params(ip: String).void }
          attr_writer :ip

          # This signal should provide a higher level of trust, indicating that the user is
          # genuine. For more details, refer to
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
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform::OrSymbol,
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
            # genuine. For more details, refer to
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
                  PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform::OrSymbol,
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
                  PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANDROID =
              T.let(
                :android,
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform::TaggedSymbol
              )
            IOS =
              T.let(
                :ios,
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform::TaggedSymbol
              )
            IPADOS =
              T.let(
                :ipados,
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform::TaggedSymbol
              )
            TVOS =
              T.let(
                :tvos,
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform::TaggedSymbol
              )
            WEB =
              T.let(
                :web,
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform::TaggedSymbol
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
end
