# typed: strong

module PreludeSDK
  module Models
    class VerificationCheckParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, PreludeSDK::Internal::AnyHash) }

      # The OTP code to validate.
      sig { returns(String) }
      attr_accessor :code

      # The verification target. Either a phone number or an email address. To use the
      # email verification feature contact us to discuss your use case.
      sig { returns(PreludeSDK::VerificationCheckParams::Target) }
      attr_reader :target

      sig do
        params(target: PreludeSDK::VerificationCheckParams::Target::OrHash).void
      end
      attr_writer :target

      sig do
        params(
          code: String,
          target: PreludeSDK::VerificationCheckParams::Target::OrHash,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The OTP code to validate.
        code:,
        # The verification target. Either a phone number or an email address. To use the
        # email verification feature contact us to discuss your use case.
        target:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            code: String,
            target: PreludeSDK::VerificationCheckParams::Target,
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Target < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, PreludeSDK::Internal::AnyHash) }

        # The type of the target. Either "phone_number" or "email_address".
        sig do
          returns(PreludeSDK::VerificationCheckParams::Target::Type::OrSymbol)
        end
        attr_accessor :type

        # An E.164 formatted phone number or an email address.
        sig { returns(String) }
        attr_accessor :value

        # The verification target. Either a phone number or an email address. To use the
        # email verification feature contact us to discuss your use case.
        sig do
          params(
            type: PreludeSDK::VerificationCheckParams::Target::Type::OrSymbol,
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
              type: PreludeSDK::VerificationCheckParams::Target::Type::OrSymbol,
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
              T.all(Symbol, PreludeSDK::VerificationCheckParams::Target::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PHONE_NUMBER =
            T.let(
              :phone_number,
              PreludeSDK::VerificationCheckParams::Target::Type::TaggedSymbol
            )
          EMAIL_ADDRESS =
            T.let(
              :email_address,
              PreludeSDK::VerificationCheckParams::Target::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::VerificationCheckParams::Target::Type::TaggedSymbol
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
