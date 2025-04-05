# typed: strong

module PreludeSDK
  module Models
    class VerificationCheckParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # The OTP code to validate.
      sig { returns(String) }
      attr_accessor :code

      # The verification target. Either a phone number or an email address. To use the
      #   email verification feature contact us to discuss your use case.
      sig { returns(PreludeSDK::Models::VerificationCheckParams::Target) }
      attr_reader :target

      sig do
        params(target: T.any(PreludeSDK::Models::VerificationCheckParams::Target, PreludeSDK::Internal::AnyHash))
          .void
      end
      attr_writer :target

      sig do
        params(
          code: String,
          target: T.any(PreludeSDK::Models::VerificationCheckParams::Target, PreludeSDK::Internal::AnyHash),
          request_options: T.any(PreludeSDK::RequestOptions, PreludeSDK::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(code:, target:, request_options: {}); end

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
      def to_hash; end

      class Target < PreludeSDK::Internal::Type::BaseModel
        # The type of the target. Either "phone_number" or "email_address".
        sig { returns(PreludeSDK::Models::VerificationCheckParams::Target::Type::OrSymbol) }
        attr_accessor :type

        # An E.164 formatted phone number or an email address.
        sig { returns(String) }
        attr_accessor :value

        # The verification target. Either a phone number or an email address. To use the
        #   email verification feature contact us to discuss your use case.
        sig do
          params(type: PreludeSDK::Models::VerificationCheckParams::Target::Type::OrSymbol, value: String)
            .returns(T.attached_class)
        end
        def self.new(type:, value:); end

        sig do
          override
            .returns({type: PreludeSDK::Models::VerificationCheckParams::Target::Type::OrSymbol, value: String})
        end
        def to_hash; end

        # The type of the target. Either "phone_number" or "email_address".
        module Type
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::VerificationCheckParams::Target::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, PreludeSDK::Models::VerificationCheckParams::Target::Type::TaggedSymbol) }

          PHONE_NUMBER =
            T.let(:phone_number, PreludeSDK::Models::VerificationCheckParams::Target::Type::TaggedSymbol)
          EMAIL_ADDRESS =
            T.let(:email_address, PreludeSDK::Models::VerificationCheckParams::Target::Type::TaggedSymbol)

          sig { override.returns(T::Array[PreludeSDK::Models::VerificationCheckParams::Target::Type::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
