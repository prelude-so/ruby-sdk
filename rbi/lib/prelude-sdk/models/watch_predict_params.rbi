# typed: strong

module PreludeSDK
  module Models
    class WatchPredictParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      sig { returns(PreludeSDK::Models::WatchPredictParams::Target) }
      attr_accessor :target

      sig { returns(T.nilable(PreludeSDK::Models::WatchPredictParams::Signals)) }
      attr_reader :signals

      sig { params(signals: PreludeSDK::Models::WatchPredictParams::Signals).void }
      attr_writer :signals

      sig do
        params(
          target: PreludeSDK::Models::WatchPredictParams::Target,
          signals: PreludeSDK::Models::WatchPredictParams::Signals,
          request_options: T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(target:, signals: nil, request_options: {})
      end

      sig do
        override.returns(
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

      class Signals < PreludeSDK::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :device_id

        sig { params(device_id: String).void }
        attr_writer :device_id

        sig { returns(T.nilable(String)) }
        attr_reader :device_model

        sig { params(device_model: String).void }
        attr_writer :device_model

        sig { returns(T.nilable(String)) }
        attr_reader :device_type

        sig { params(device_type: String).void }
        attr_writer :device_type

        sig { returns(T.nilable(String)) }
        attr_reader :ip

        sig { params(ip: String).void }
        attr_writer :ip

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
