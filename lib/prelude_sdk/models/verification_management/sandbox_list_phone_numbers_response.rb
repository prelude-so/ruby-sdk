# frozen_string_literal: true

module PreludeSDK
  module Models
    module VerificationManagement
      # @see PreludeSDK::Resources::VerificationManagement::Sandbox#list_phone_numbers
      class SandboxListPhoneNumbersResponse < PreludeSDK::Internal::Type::BaseModel
        # @!attribute phone_numbers
        #   A list of sandbox phone numbers.
        #
        #   @return [Array<PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse::PhoneNumber>]
        required :phone_numbers,
                 -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse::PhoneNumber] }

        # @!method initialize(phone_numbers:)
        #   @param phone_numbers [Array<PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse::PhoneNumber>] A list of sandbox phone numbers.

        class PhoneNumber < PreludeSDK::Internal::Type::BaseModel
          # @!attribute attempt_code
          #   The fixed attempt code associated with the sandbox phone number.
          #
          #   @return [String]
          required :attempt_code, String

          # @!attribute created_at
          #   The date and time when the phone number was added to the sandbox list.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute phone_number
          #   An E.164 formatted phone number.
          #
          #   @return [String]
          required :phone_number, String

          # @!method initialize(attempt_code:, created_at:, phone_number:)
          #   @param attempt_code [String] The fixed attempt code associated with the sandbox phone number.
          #
          #   @param created_at [Time] The date and time when the phone number was added to the sandbox list.
          #
          #   @param phone_number [String] An E.164 formatted phone number.
        end
      end
    end
  end
end
