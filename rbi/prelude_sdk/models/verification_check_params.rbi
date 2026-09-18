# typed: strong

module PreludeSDK
  module Models
    class VerificationCheckParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::VerificationCheckParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The OTP code to validate.
      sig { returns(String) }
      attr_accessor :code

      # The verification target. Either a phone number or an email address. To use the
      # email verification feature contact us to discuss your use case.
      sig { returns(PreludeSDK::Target) }
      attr_reader :target

      sig { params(target: PreludeSDK::Target::OrHash).void }
      attr_writer :target

      # Required when checking a code issued under the `prelude:psd2` template. The
      # submitted variables must match those provided at issuance; any mismatch
      # invalidates the code (PSD2 SCA RTS Article 5 dynamic linking). Ignored on
      # non-PSD2 verifications.
      sig { returns(T.nilable(PreludeSDK::VerificationCheckParams::Psd2)) }
      attr_reader :psd2

      sig do
        params(psd2: PreludeSDK::VerificationCheckParams::Psd2::OrHash).void
      end
      attr_writer :psd2

      sig do
        params(
          code: String,
          target: PreludeSDK::Target::OrHash,
          psd2: PreludeSDK::VerificationCheckParams::Psd2::OrHash,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The OTP code to validate.
        code:,
        # The verification target. Either a phone number or an email address. To use the
        # email verification feature contact us to discuss your use case.
        target:,
        # Required when checking a code issued under the `prelude:psd2` template. The
        # submitted variables must match those provided at issuance; any mismatch
        # invalidates the code (PSD2 SCA RTS Article 5 dynamic linking). Ignored on
        # non-PSD2 verifications.
        psd2: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            code: String,
            target: PreludeSDK::Target,
            psd2: PreludeSDK::VerificationCheckParams::Psd2,
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Psd2 < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::VerificationCheckParams::Psd2,
              PreludeSDK::Internal::AnyHash
            )
          end

        # Decimal amount of the transaction.
        sig { returns(String) }
        attr_accessor :amount

        # ISO 4217 currency code.
        sig { returns(String) }
        attr_accessor :currency

        # Payee name displayed to the payer.
        sig { returns(String) }
        attr_accessor :recipient

        # Required when checking a code issued under the `prelude:psd2` template. The
        # submitted variables must match those provided at issuance; any mismatch
        # invalidates the code (PSD2 SCA RTS Article 5 dynamic linking). Ignored on
        # non-PSD2 verifications.
        sig do
          params(amount: String, currency: String, recipient: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Decimal amount of the transaction.
          amount:,
          # ISO 4217 currency code.
          currency:,
          # Payee name displayed to the payer.
          recipient:
        )
        end

        sig do
          override.returns(
            { amount: String, currency: String, recipient: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
