# typed: strong

module PreludeSDK
  module Models
    class WatchPredictParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      # The verification target. Either a phone number or an email address. To use the
      #   email verification feature contact us to discuss your use case.
      sig { returns(PreludeSDK::Models::WatchPredictParams::Target) }
      def target
      end

      sig do
        params(_: T.any(PreludeSDK::Models::WatchPredictParams::Target, PreludeSDK::Util::AnyHash))
          .returns(T.any(PreludeSDK::Models::WatchPredictParams::Target, PreludeSDK::Util::AnyHash))
      end
      def target=(_)
      end

      # It is highly recommended that you provide the signals to increase prediction
      #   performance.
      sig { returns(T.nilable(PreludeSDK::Models::WatchPredictParams::Signals)) }
      def signals
      end

      sig do
        params(_: T.any(PreludeSDK::Models::WatchPredictParams::Signals, PreludeSDK::Util::AnyHash))
          .returns(T.any(PreludeSDK::Models::WatchPredictParams::Signals, PreludeSDK::Util::AnyHash))
      end
      def signals=(_)
      end

      sig do
        params(
          target: T.any(PreludeSDK::Models::WatchPredictParams::Target, PreludeSDK::Util::AnyHash),
          signals: T.any(PreludeSDK::Models::WatchPredictParams::Signals, PreludeSDK::Util::AnyHash),
          request_options: T.any(PreludeSDK::RequestOptions, PreludeSDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(target:, signals: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              target: PreludeSDK::Models::WatchPredictParams::Target,
              signals: PreludeSDK::Models::WatchPredictParams::Signals,
              request_options: PreludeSDK::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Target < PreludeSDK::BaseModel
        # The type of the target. Either "phone_number" or "email_address".
        sig { returns(PreludeSDK::Models::WatchPredictParams::Target::Type::OrSymbol) }
        def type
        end

        sig do
          params(_: PreludeSDK::Models::WatchPredictParams::Target::Type::OrSymbol)
            .returns(PreludeSDK::Models::WatchPredictParams::Target::Type::OrSymbol)
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
          params(type: PreludeSDK::Models::WatchPredictParams::Target::Type::OrSymbol, value: String)
            .returns(T.attached_class)
        end
        def self.new(type:, value:)
        end

        sig { override.returns({type: PreludeSDK::Models::WatchPredictParams::Target::Type::OrSymbol, value: String}) }
        def to_hash
        end

        # The type of the target. Either "phone_number" or "email_address".
        module Type
          extend PreludeSDK::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::WatchPredictParams::Target::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, PreludeSDK::Models::WatchPredictParams::Target::Type::TaggedSymbol) }

          PHONE_NUMBER = T.let(:phone_number, PreludeSDK::Models::WatchPredictParams::Target::Type::TaggedSymbol)
          EMAIL_ADDRESS = T.let(:email_address, PreludeSDK::Models::WatchPredictParams::Target::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[PreludeSDK::Models::WatchPredictParams::Target::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      class Signals < PreludeSDK::BaseModel
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
        sig { returns(T.nilable(String)) }
        def device_type
        end

        sig { params(_: String).returns(String) }
        def device_type=(_)
        end

        # The IPv4 address of the user's device
        sig { returns(T.nilable(String)) }
        def ip
        end

        sig { params(_: String).returns(String) }
        def ip=(_)
        end

        # It is highly recommended that you provide the signals to increase prediction
        #   performance.
        sig do
          params(
            device_id: String,
            device_model: String,
            device_type: String,
            ip: String
          ).returns(T.attached_class)
        end
        def self.new(device_id: nil, device_model: nil, device_type: nil, ip: nil)
        end

        sig { override.returns({device_id: String, device_model: String, device_type: String, ip: String}) }
        def to_hash
        end
      end
    end
  end
end
