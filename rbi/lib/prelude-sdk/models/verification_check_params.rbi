# typed: strong

module PreludeSDK
  module Models
    class VerificationCheckParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      # The OTP code to validate.
      sig { returns(String) }
      def code
      end

      sig { params(_: String).returns(String) }
      def code=(_)
      end

      # The verification target. Either a phone number or an email address. To use the
      #   email verification feature contact us to discuss your use case.
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
        # The type of the target. Either "phone_number" or "email_address".
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
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
        sig { params(type: Symbol, value: String).returns(T.attached_class) }
        def self.new(type:, value:)
        end

        sig { override.returns({type: Symbol, value: String}) }
        def to_hash
        end

        # The type of the target. Either "phone_number" or "email_address".
        class Type < PreludeSDK::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          PHONE_NUMBER = :phone_number
          EMAIL_ADDRESS = :email_address
        end
      end
    end
  end
end
