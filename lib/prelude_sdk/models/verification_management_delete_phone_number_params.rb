# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::VerificationManagement#delete_phone_number
    class VerificationManagementDeletePhoneNumberParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute phone_number
      #   An E.164 formatted phone number to remove from the list.
      #
      #   @return [String]
      required :phone_number, String

      # @!method initialize(phone_number:, request_options: {})
      #   @param phone_number [String] An E.164 formatted phone number to remove from the list.
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      module Action
        extend PreludeSDK::Internal::Type::Enum

        ALLOW = :allow
        BLOCK = :block

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
