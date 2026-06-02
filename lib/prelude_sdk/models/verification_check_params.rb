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
      #   @return [PreludeSDK::Models::VerificationCheckParams::Target]
      required :target, -> { PreludeSDK::VerificationCheckParams::Target }

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
      #   @param target [PreludeSDK::Models::VerificationCheckParams::Target] The verification target. Either a phone number or an email address. To use the e
      #
      #   @param psd2 [PreludeSDK::Models::VerificationCheckParams::Psd2] Required when checking a code issued under the `prelude:psd2` template. The subm
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Target < PreludeSDK::Internal::Type::BaseModel
        # @!attribute type
        #   The type of the target. Either "phone_number" or "email_address".
        #
        #   @return [Symbol, PreludeSDK::Models::VerificationCheckParams::Target::Type]
        required :type, enum: -> { PreludeSDK::VerificationCheckParams::Target::Type }

        # @!attribute value
        #   An E.164 formatted phone number or an email address.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(type:, value:)
        #   The verification target. Either a phone number or an email address. To use the
        #   email verification feature contact us to discuss your use case.
        #
        #   @param type [Symbol, PreludeSDK::Models::VerificationCheckParams::Target::Type] The type of the target. Either "phone_number" or "email_address".
        #
        #   @param value [String] An E.164 formatted phone number or an email address.

        # The type of the target. Either "phone_number" or "email_address".
        #
        # @see PreludeSDK::Models::VerificationCheckParams::Target#type
        module Type
          extend PreludeSDK::Internal::Type::Enum

          PHONE_NUMBER = :phone_number
          EMAIL_ADDRESS = :email_address

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

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
