# typed: strong

module PreludeSDK
  module Models
    class VerificationCheckParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      Shape = T.type_alias do
        T.all(
          {code: String, target: PreludeSDK::Models::VerificationCheckParams::Target},
          PreludeSDK::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :code

      sig { returns(PreludeSDK::Models::VerificationCheckParams::Target) }
      attr_accessor :target

      sig do
        params(
          code: String,
          target: PreludeSDK::Models::VerificationCheckParams::Target,
          request_options: PreludeSDK::RequestOpts
        ).void
      end
      def initialize(code:, target:, request_options: {}); end

      sig { returns(PreludeSDK::Models::VerificationCheckParams::Shape) }
      def to_h; end

      class Target < PreludeSDK::BaseModel
        Shape = T.type_alias { {type: Symbol, value: String} }

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

        sig { params(type: Symbol, value: String).void }
        def initialize(type:, value:); end

        sig { returns(PreludeSDK::Models::VerificationCheckParams::Target::Shape) }
        def to_h; end

        class Type < PreludeSDK::Enum
          abstract!

          PHONE_NUMBER = :phone_number

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
