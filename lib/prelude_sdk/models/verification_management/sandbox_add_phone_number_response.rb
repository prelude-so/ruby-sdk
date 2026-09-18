# frozen_string_literal: true

module PreludeSDK
  module Models
    module VerificationManagement
      # @see PreludeSDK::Resources::VerificationManagement::Sandbox#add_phone_number
      class SandboxAddPhoneNumberResponse < PreludeSDK::Internal::Type::BaseModel
        # @!attribute attempt_code
        #   The fixed attempt code associated with the sandbox phone number.
        #
        #   @return [String]
        required :attempt_code, String

        # @!attribute phone_number
        #   The E.164 formatted phone number that was added to the sandbox list.
        #
        #   @return [String]
        required :phone_number, String

        # @!method initialize(attempt_code:, phone_number:)
        #   @param attempt_code [String] The fixed attempt code associated with the sandbox phone number.
        #
        #   @param phone_number [String] The E.164 formatted phone number that was added to the sandbox list.
      end
    end
  end
end
