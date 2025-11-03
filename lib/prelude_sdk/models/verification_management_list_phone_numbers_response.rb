# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::VerificationManagement#list_phone_numbers
    class VerificationManagementListPhoneNumbersResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute phone_numbers
      #   A list of phone numbers in the allow or block list.
      #
      #   @return [Array<PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse::PhoneNumber>]
      required :phone_numbers,
               -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse::PhoneNumber] }

      # @!method initialize(phone_numbers:)
      #   @param phone_numbers [Array<PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse::PhoneNumber>] A list of phone numbers in the allow or block list.

      class PhoneNumber < PreludeSDK::Internal::Type::BaseModel
        # @!attribute created_at
        #   The date and time when the phone number was added to the list.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute phone_number
        #   An E.164 formatted phone number.
        #
        #   @return [String]
        required :phone_number, String

        # @!method initialize(created_at:, phone_number:)
        #   @param created_at [Time] The date and time when the phone number was added to the list.
        #
        #   @param phone_number [String] An E.164 formatted phone number.
      end
    end
  end
end
