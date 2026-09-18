# frozen_string_literal: true

module PreludeSDK
  module Models
    module VerificationManagement
      # @see PreludeSDK::Resources::VerificationManagement::Sandbox#delete_phone_number
      class SandboxDeletePhoneNumberResponse < PreludeSDK::Internal::Type::BaseModel
        # @!attribute phone_number
        #   The E.164 formatted phone number that was removed from the sandbox list.
        #
        #   @return [String]
        required :phone_number, String

        # @!method initialize(phone_number:)
        #   @param phone_number [String] The E.164 formatted phone number that was removed from the sandbox list.
      end
    end
  end
end
