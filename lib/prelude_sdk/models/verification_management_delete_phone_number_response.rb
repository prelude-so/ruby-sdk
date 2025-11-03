# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::VerificationManagement#delete_phone_number
    class VerificationManagementDeletePhoneNumberResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute phone_number
      #   The E.164 formatted phone number that was removed from the list.
      #
      #   @return [String]
      required :phone_number, String

      # @!method initialize(phone_number:)
      #   @param phone_number [String] The E.164 formatted phone number that was removed from the list.
    end
  end
end
