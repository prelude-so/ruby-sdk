# typed: strong

module PreludeSDK
  module Resources
    class VerificationManagement
      # Verify phone numbers.
      class Sandbox
        # Register a phone number as a sandbox number and associate it with a fixed
        # attempt code. Subsequent verification attempts against this number will not
        # trigger a real SMS/call and will validate against the configured attempt code.
        #
        # This operation is idempotent - re-adding the same phone number will overwrite
        # the existing attempt code.
        #
        # In order to get access to this endpoint, contact our support team.
        sig do
          params(
            attempt_code: String,
            phone_number: String,
            request_options: PreludeSDK::RequestOptions::OrHash
          ).returns(
            PreludeSDK::Models::VerificationManagement::SandboxAddPhoneNumberResponse
          )
        end
        def add_phone_number(
          # The fixed attempt code that will validate verification attempts for this phone
          # number.
          attempt_code:,
          # An E.164 formatted phone number to add to the sandbox list.
          phone_number:,
          request_options: {}
        )
        end

        # Remove a phone number from the sandbox list.
        #
        # This operation is idempotent - deleting a phone number that is not in the
        # sandbox list will succeed without making any changes.
        #
        # In order to get access to this endpoint, contact our support team.
        sig do
          params(
            phone_number: String,
            request_options: PreludeSDK::RequestOptions::OrHash
          ).returns(
            PreludeSDK::Models::VerificationManagement::SandboxDeletePhoneNumberResponse
          )
        end
        def delete_phone_number(
          # The E.164 formatted phone number to remove from the sandbox list.
          phone_number,
          request_options: {}
        )
        end

        # Retrieve the list of sandbox phone numbers for the account. Sandbox numbers are
        # test numbers that bypass the real verification flow and return a fixed attempt
        # code.
        #
        # In order to get access to this endpoint, contact our support team.
        sig do
          params(request_options: PreludeSDK::RequestOptions::OrHash).returns(
            PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse
          )
        end
        def list_phone_numbers(request_options: {})
        end

        # @api private
        sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
