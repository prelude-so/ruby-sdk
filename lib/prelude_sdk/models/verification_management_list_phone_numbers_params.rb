# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::VerificationManagement#list_phone_numbers
    class VerificationManagementListPhoneNumbersParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
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
