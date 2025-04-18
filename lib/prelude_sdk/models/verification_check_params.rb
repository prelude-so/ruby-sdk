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
      required :target, -> { PreludeSDK::Models::VerificationCheckParams::Target }

      # @!method initialize(code:, target:, request_options: {})
      #   @param code [String]
      #   @param target [PreludeSDK::Models::VerificationCheckParams::Target]
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Target < PreludeSDK::Internal::Type::BaseModel
        # @!attribute type
        #   The type of the target. Either "phone_number" or "email_address".
        #
        #   @return [Symbol, PreludeSDK::Models::VerificationCheckParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::VerificationCheckParams::Target::Type }

        # @!attribute value
        #   An E.164 formatted phone number or an email address.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(type:, value:)
        #   The verification target. Either a phone number or an email address. To use the
        #   email verification feature contact us to discuss your use case.
        #
        #   @param type [Symbol, PreludeSDK::Models::VerificationCheckParams::Target::Type]
        #   @param value [String]

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
    end
  end
end
