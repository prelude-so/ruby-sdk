# frozen_string_literal: true

module PreludeSDK
  module Models
    module VerificationManagement
      # @see PreludeSDK::Resources::VerificationManagement::Sandbox#add_phone_number
      class SandboxAddPhoneNumberParams < PreludeSDK::Internal::Type::BaseModel
        extend PreludeSDK::Internal::Type::RequestParameters::Converter
        include PreludeSDK::Internal::Type::RequestParameters

        # @!attribute attempt_code
        #   The fixed attempt code that will validate verification attempts for this phone
        #   number.
        #
        #   @return [String]
        required :attempt_code, String

        # @!attribute phone_number
        #   An E.164 formatted phone number to add to the sandbox list.
        #
        #   @return [String]
        required :phone_number, String

        # @!method initialize(attempt_code:, phone_number:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {PreludeSDK::Models::VerificationManagement::SandboxAddPhoneNumberParams} for
        #   more details.
        #
        #   @param attempt_code [String] The fixed attempt code that will validate verification attempts for this phone n
        #
        #   @param phone_number [String] An E.164 formatted phone number to add to the sandbox list.
        #
        #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
