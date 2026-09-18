# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Verification#check
    class VerificationCheckParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute code
      #   The OTP code to validate.
      #
      #   @return [String]
      required :code, String

      # @!attribute target
      #   The verification target. Either a phone number or an email address. To use the
      #   email verification feature contact us to discuss your use case.
      #
      #   @return [PreludeSDK::Models::Target]
      required :target, -> { PreludeSDK::Target }

      # @!attribute psd2
      #   Required when checking a code issued under the `prelude:psd2` template. The
      #   submitted variables must match those provided at issuance; any mismatch
      #   invalidates the code (PSD2 SCA RTS Article 5 dynamic linking). Ignored on
      #   non-PSD2 verifications.
      #
      #   @return [PreludeSDK::Models::VerificationCheckParams::Psd2, nil]
      optional :psd2, -> { PreludeSDK::VerificationCheckParams::Psd2 }

      # @!method initialize(code:, target:, psd2: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::VerificationCheckParams} for more details.
      #
      #   @param code [String] The OTP code to validate.
      #
      #   @param target [PreludeSDK::Models::Target] The verification target. Either a phone number or an email address. To use the e
      #
      #   @param psd2 [PreludeSDK::Models::VerificationCheckParams::Psd2] Required when checking a code issued under the `prelude:psd2` template. The subm
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Psd2 < PreludeSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   Decimal amount of the transaction.
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #   ISO 4217 currency code.
        #
        #   @return [String]
        required :currency, String

        # @!attribute recipient
        #   Payee name displayed to the payer.
        #
        #   @return [String]
        required :recipient, String

        # @!method initialize(amount:, currency:, recipient:)
        #   Required when checking a code issued under the `prelude:psd2` template. The
        #   submitted variables must match those provided at issuance; any mismatch
        #   invalidates the code (PSD2 SCA RTS Article 5 dynamic linking). Ignored on
        #   non-PSD2 verifications.
        #
        #   @param amount [String] Decimal amount of the transaction.
        #
        #   @param currency [String] ISO 4217 currency code.
        #
        #   @param recipient [String] Payee name displayed to the payer.
      end
    end
  end
end
