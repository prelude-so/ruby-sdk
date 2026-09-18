# frozen_string_literal: true

module PreludeSDK
  module Models
    class Target < PreludeSDK::Internal::Type::BaseModel
      # @!attribute type
      #   The type of the target. Either "phone_number" or "email_address".
      #
      #   @return [Symbol, PreludeSDK::Models::Target::Type]
      required :type, enum: -> { PreludeSDK::Target::Type }

      # @!attribute value
      #   An E.164 formatted phone number or an email address.
      #
      #   @return [String]
      required :value, String

      # @!method initialize(type:, value:)
      #   The operation target. Either a phone number or an email address.
      #
      #   @param type [Symbol, PreludeSDK::Models::Target::Type] The type of the target. Either "phone_number" or "email_address".
      #
      #   @param value [String] An E.164 formatted phone number or an email address.

      # The type of the target. Either "phone_number" or "email_address".
      #
      # @see PreludeSDK::Models::Target#type
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
