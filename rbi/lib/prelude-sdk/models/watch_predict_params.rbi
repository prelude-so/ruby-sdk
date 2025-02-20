# typed: strong

module PreludeSDK
  module Models
    class WatchPredictParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      sig { returns(PreludeSDK::Models::WatchPredictParams::Target) }
      def target
      end

      sig do
        params(_: PreludeSDK::Models::WatchPredictParams::Target)
          .returns(PreludeSDK::Models::WatchPredictParams::Target)
      end
      def target=(_)
      end

      sig { returns(T.nilable(PreludeSDK::Models::WatchPredictParams::Signals)) }
      def signals
      end

      sig do
        params(_: PreludeSDK::Models::WatchPredictParams::Signals)
          .returns(PreludeSDK::Models::WatchPredictParams::Signals)
      end
      def signals=(_)
      end

      sig do
        params(
          target: PreludeSDK::Models::WatchPredictParams::Target,
          signals: PreludeSDK::Models::WatchPredictParams::Signals,
          request_options: T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(target:, signals: nil, request_options: {})
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

      class Signals < PreludeSDK::BaseModel
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

        sig { returns(T.nilable(String)) }
        def device_type
        end

        sig { params(_: String).returns(String) }
        def device_type=(_)
        end

        sig { returns(T.nilable(String)) }
        def ip
        end

        sig { params(_: String).returns(String) }
        def ip=(_)
        end

        sig { params(device_id: String, device_model: String, device_type: String, ip: String).void }
        def initialize(device_id: nil, device_model: nil, device_type: nil, ip: nil)
        end

        sig { override.returns({device_id: String, device_model: String, device_type: String, ip: String}) }
        def to_hash
        end
      end
    end
  end
end
