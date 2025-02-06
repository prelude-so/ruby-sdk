# typed: strong

module PreludeSDK
  module Models
    class VerificationCheckParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      sig { returns(String) }
      attr_accessor :code

      sig { returns(PreludeSDK::Models::VerificationCheckParams::Target) }
      attr_accessor :target

      sig do
        params(
          code: String,
          target: PreludeSDK::Models::VerificationCheckParams::Target,
          request_options: T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(code:, target:, request_options: {}); end

      sig do
        override.returns(
          {
            code: String,
            target: PreludeSDK::Models::VerificationCheckParams::Target,
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash; end

      class Target < PreludeSDK::BaseModel
        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

        sig { params(type: Symbol, value: String).void }
        def initialize(type:, value:); end

        sig { override.returns({type: Symbol, value: String}) }
        def to_hash; end

        class Type < PreludeSDK::Enum
          abstract!

          PHONE_NUMBER = :phone_number

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
