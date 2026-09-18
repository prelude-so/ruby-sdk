# frozen_string_literal: true

module PreludeSDK
  module Models
    module VerificationManagement
      # @see PreludeSDK::Resources::VerificationManagement::Sandbox#list_phone_numbers
      class SandboxListPhoneNumbersParams < PreludeSDK::Internal::Type::BaseModel
        extend PreludeSDK::Internal::Type::RequestParameters::Converter
        include PreludeSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
