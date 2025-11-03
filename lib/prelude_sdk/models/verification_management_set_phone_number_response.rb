# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::VerificationManagement#set_phone_number
    class VerificationManagementSetPhoneNumberResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute phone_number
      #   The E.164 formatted phone number that was added to the list.
      #
      #   @return [String]
      required :phone_number, String

      # @!method initialize(phone_number:)
      #   @param phone_number [String] The E.164 formatted phone number that was added to the list.
    end
  end
end
