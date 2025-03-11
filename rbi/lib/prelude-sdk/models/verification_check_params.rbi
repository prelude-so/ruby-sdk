# typed: strong

module PreludeSDK
  module Models
    class VerificationCheckParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      sig { returns(String) }
      def code
      end

      sig { params(_: String).returns(String) }
      def code=(_)
      end

      sig { returns(PreludeSDK::Models::VerificationCheckParams::Target) }
      def target
      end

      sig do
        params(_: PreludeSDK::Models::VerificationCheckParams::Target)
          .returns(PreludeSDK::Models::VerificationCheckParams::Target)
      end
      def target=(_)
      end

      sig do
        params(
          code: String,
          target: PreludeSDK::Models::VerificationCheckParams::Target,
          request_options: T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(code:, target:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              code: String,
              target: PreludeSDK::Models::VerificationCheckParams::Target,
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

        sig { params(type: Symbol, value: String).returns(T.attached_class) }
        def self.new(type:, value:)
        end

        sig { override.returns({type: Symbol, value: String}) }
        def to_hash
        end

        class Type < PreludeSDK::Enum
          abstract!

          PHONE_NUMBER = :phone_number
          EMAIL_ADDRESS = :email_address

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
