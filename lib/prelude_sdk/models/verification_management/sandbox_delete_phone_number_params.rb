# frozen_string_literal: true

module PreludeSDK
  module Models
    module VerificationManagement
      # @see PreludeSDK::Resources::VerificationManagement::Sandbox#delete_phone_number
      class SandboxDeletePhoneNumberParams < PreludeSDK::Internal::Type::BaseModel
        extend PreludeSDK::Internal::Type::RequestParameters::Converter
        include PreludeSDK::Internal::Type::RequestParameters

        # @!attribute phone_number
        #
        #   @return [String]
        required :phone_number, String

        # @!method initialize(phone_number:, request_options: {})
        #   @param phone_number [String]
        #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
